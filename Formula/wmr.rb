class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.42/wmr-0.0.42-macos-arm64"
  version "0.0.42"
  sha256 "8119e18fbf55e4be3dc7cbb0211d70ebc72f5f7865d4cd53f3100918992b35fd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.42-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
