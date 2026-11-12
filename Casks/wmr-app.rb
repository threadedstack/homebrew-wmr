cask "wmr-app" do
  version "0.0.6"
  sha256 "36e71fb1744739fcdc3ebd36805569bb1fb73c73c5576f7f607b305ff89294d5"

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
