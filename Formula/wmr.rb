class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.34/wmr-0.0.34-macos-arm64"
  version "0.0.34"
  sha256 "89d471e6f4ae56cb09bcfe21a1db52f9f42d0d49cbec8c82ac7146cc3932b88a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.34-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
