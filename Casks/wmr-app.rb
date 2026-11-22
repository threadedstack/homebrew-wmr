cask "wmr-app" do
  version "0.0.19"
  sha256 "5c6f2255656375f65248fb63582bb352e42b25ee92837f37eca3b0dd46a18f6b"

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
