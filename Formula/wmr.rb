class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.44/wmr-0.0.44-macos-arm64"
  version "0.0.44"
  sha256 "15d49bee9de08bd9463e3d95053f81ee820b1a718b9cb2116bbab8c5dc1a1b78"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.44-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
