class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.47/wmr-0.0.47-macos-arm64"
  version "0.0.47"
  sha256 "c3a96de78901b85c2da711b1717f730098c87b9672f304d7b430c6821341af05"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.47-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
