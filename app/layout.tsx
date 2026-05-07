import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "MLBB Draft Helper",
  description: "Контрпики, сборки и помощник драфта для Mobile Legends.",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="ru" className="dark">
      <body>{children}</body>
    </html>
  );
}
