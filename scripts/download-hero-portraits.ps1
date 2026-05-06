$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$appPath = Join-Path $root "app.js"
$outDir = Join-Path $root "assets\heroes"

New-Item -ItemType Directory -Force -Path $outDir | Out-Null

$content = Get-Content -Path $appPath -Raw -Encoding UTF8
$match = [regex]::Match($content, "const heroPortraits = \{(?<body>[\s\S]*?)\n\};\s*\n\s*const counterChart")

if (-not $match.Success) {
  throw "Cannot find heroPortraits in app.js"
}

$entries = [regex]::Matches(
  $match.Groups["body"].Value,
  '^\s*(?:"(?<quotedName>[^"]+)"|(?<plainName>[A-Za-z][A-Za-z0-9]*)):\s*(?:\r?\n\s*)?"(?<url>[^"]+)"',
  "Multiline"
)

function Get-HeroSlug([string]$name) {
  $slug = $name.ToLowerInvariant()
  $slug = $slug -replace '\.', ''
  $slug = $slug -replace '&', 'and'
  $slug = $slug -replace '[^a-z0-9]+', '-'
  $slug = $slug.Trim('-')
  return $slug
}

$downloaded = 0
$skipped = 0
$failed = 0

foreach ($entry in $entries) {
  $name = if ($entry.Groups["quotedName"].Success) {
    $entry.Groups["quotedName"].Value
  } else {
    $entry.Groups["plainName"].Value
  }
  $url = $entry.Groups["url"].Value
  $slug = Get-HeroSlug $name
  $extension = [System.IO.Path]::GetExtension(([Uri]$url).AbsolutePath)

  if ([string]::IsNullOrWhiteSpace($extension)) {
    $extension = ".jpg"
  }

  $target = Join-Path $outDir "$slug$extension"

  if (Test-Path $target) {
    Write-Host "skip $name -> $target"
    $skipped++
    continue
  }

  try {
    Invoke-WebRequest -Uri $url -OutFile $target -UseBasicParsing -TimeoutSec 30 -Headers @{
      "User-Agent" = "MLBB-Draft-Helper/1.0"
    }
    Write-Host "ok   $name -> $target"
    $downloaded++
  } catch {
    Write-Warning "fail $name -> $url ($($_.Exception.Message))"
    $failed++
  }
}

Write-Host ""
Write-Host "Downloaded: $downloaded"
Write-Host "Skipped:    $skipped"
Write-Host "Failed:     $failed"
