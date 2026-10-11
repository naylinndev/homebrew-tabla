# Template: the release workflow fills in the version and checksums and
# publishes it to the naylinndev/homebrew-tabla tap.
cask "tabla" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "412d1a26e1db96b2fc2ac2ade3a8aee402de00e32b09e77a5884f66e2032e355",
         intel: "df69e4c015008aab795955685bac8807ccad7ffa44a619953725aebbd1e22b93"

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
