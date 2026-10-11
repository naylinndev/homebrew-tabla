# Template: the release workflow fills in the version and checksums and
# publishes it to the naylinndev/homebrew-tabla tap.
cask "tabla" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "bc6b512b80cd9b900deac0f1a3ae456df9832387794bb7bc30ac7fda5e8ab486",
         intel: "b10ec8caf17322c1ffbe3bd5e79a2a70bacbf9cbaa658c3a8fab16a1ce5d06a3"

  url "https://github.com/naylinndev/tabla/releases/download/v#{version}/Tabla_#{version}_#{arch}.dmg"
  name "Tabla"
  desc "Free, open-source database client for PostgreSQL, MySQL, Oracle, SQLite and more"
  homepage "https://github.com/naylinndev/tabla"

  depends_on macos: ">= :big_sur"

  app "Tabla.app"
  # Puts `tabla` on PATH so AI tools can run `tabla mcp`.
  binary "#{appdir}/Tabla.app/Contents/MacOS/tabla"

  zap trash: [
    "~/Library/Application Support/dev.tabla.desktop",
    "~/Library/Caches/dev.tabla.desktop",
    "~/Library/Saved Application State/dev.tabla.desktop.savedState",
    "~/Library/WebKit/dev.tabla.desktop",
  ]
end
