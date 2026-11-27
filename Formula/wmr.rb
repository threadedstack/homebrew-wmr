class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.61/wmr-0.0.61-macos-arm64"
  version "0.0.61"
  sha256 "eb95709997f4cbc85fa8c373d1fad7ae982fed5a0cb516c866037435c0523891"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.61-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
