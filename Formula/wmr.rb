class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.46/wmr-0.0.46-macos-arm64"
  version "0.0.46"
  sha256 "6d7c5fb16cb7ea062a913aaa82c814ab0d951a90228bb56af82d0a5d9e4943b5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.46-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
