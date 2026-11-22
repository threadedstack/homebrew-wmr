class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.24/wmr-0.0.24-macos-arm64"
  version "0.0.24"
  sha256 "5b2746d39466176aee85c27f94bd8595082c2d1c270c5270d15fa452a1bf01f6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.24-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
