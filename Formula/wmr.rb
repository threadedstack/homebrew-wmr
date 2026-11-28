class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.65/wmr-0.0.65-macos-arm64"
  version "0.0.65"
  sha256 "1459ec635c1d7104e86316dc896c94f701427d39dc2bf9c60dd651a610d4b47b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.65-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
