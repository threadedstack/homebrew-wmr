cask "wmr-app" do
  version "0.0.3"
  sha256 "0d37e9947aa8bf3c6338c6fe1826ad4a86e86a020ada9b8ba52168691e0c408b"

  url "https://github.com/threadedstack/wmr-releases/releases/download/v#{version}/wmr-#{version}-macos-arm64.dmg"
  name "wmr"
  desc "Projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "wmr-canary.app"

  zap trash: [
    "~/Library/Application Support/dev.wmr.desktop",
    "~/Library/Caches/dev.wmr.desktop",
    "~/Library/Preferences/dev.wmr.desktop.plist",
    "~/Library/Saved Application State/dev.wmr.desktop.savedState",
  ]
end
