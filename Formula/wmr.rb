class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.59/wmr-0.0.59-macos-arm64"
  version "0.0.59"
  sha256 "18582e5d7ca1a86a97f57506d26772b0809a531a3a2210e80cb39330ae9e6b97"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.59-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
