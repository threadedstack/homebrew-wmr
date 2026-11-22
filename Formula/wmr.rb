class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.21/wmr-0.0.21-macos-arm64"
  version "0.0.21"
  sha256 "7a8cfc47e80f30d71cd841fce53c040b597f95712a270ce543a34124b25ddc14"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.21-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
