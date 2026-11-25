class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.49/wmr-0.0.49-macos-arm64"
  version "0.0.49"
  sha256 "77969be998c96c0d566c60cd6fb115a3af6cb54307934c042951552ed6973ac7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.49-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
