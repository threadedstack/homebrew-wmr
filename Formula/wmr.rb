class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.32/wmr-0.0.32-macos-arm64"
  version "0.0.32"
  sha256 "9ed1fbbf2adbdaaaee2fa28db08b95af286251263d296e367adb06830b7a11ce"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.32-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
