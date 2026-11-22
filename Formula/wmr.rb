class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.15/wmr-0.0.15-macos-arm64"
  version "0.0.15"
  sha256 "50d614190bf0d4a03c61a353ce1c158d0d730b0b67928ad19859b315ee694e3b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.15-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
