cask "wmr-app" do
  version "0.0.42"
  sha256 "810fffd0ae19420b97e3821570b4ca86cd0bcd809f2480340678df5df7b8dc8d"

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
