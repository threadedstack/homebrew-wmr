class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.2/wmr-0.0.2-macos-arm64"
  version "0.0.2"
  sha256 "d2e1fa83ec5f3f9ea064040299c9b34dc70c108573a21a22eec03fc14ea1273a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.2-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
