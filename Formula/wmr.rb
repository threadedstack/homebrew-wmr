class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.26/wmr-0.0.26-macos-arm64"
  version "0.0.26"
  sha256 "f2029facf719a521a55f46aa68bb4247ce0fa5427d42e1b52d2eb498be8395dc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.26-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
