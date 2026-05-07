const isProduction = process.env.NODE_ENV === "production";
const repoBasePath = isProduction ? "/mlbb-draft-helper" : "";

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: "export",
  env: {
    NEXT_PUBLIC_BASE_PATH: repoBasePath,
  },
  images: {
    unoptimized: true,
  },
  basePath: repoBasePath,
  assetPrefix: repoBasePath,
  trailingSlash: true,
};

export default nextConfig;
