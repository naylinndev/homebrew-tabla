# Template: the release workflow fills in the version and checksums and
# publishes it to the naylinndev/homebrew-tabla tap.
cask "tabla" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "1b37061016ac0ee0aea97ace505b65bd4a9d6a44800ca806d6e52b2f0b944609",
         intel: ""

  url "https://github.com/naylinndev/tabla/releases/download/v#{version}/Tabla_#{version}_#{arch}.dmg"
  name "Tabla"
  desc "Free, open-source database client for PostgreSQL, MySQL, Oracle, SQLite and more"
  homepage "https://github.com/naylinndev/tabla"

  depends_on macos: :big_sur

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
