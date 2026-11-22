cask "wmr-app" do
  version "0.0.24"
  sha256 "72e1cb1377323fb9ab24e3ee2a6dea15c7bb59e9067305fec2be37170ada65ba"

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
