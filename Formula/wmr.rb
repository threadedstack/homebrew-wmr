class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.48/wmr-0.0.48-macos-arm64"
  version "0.0.48"
  sha256 "06ded8f015699f7dd1538391050cbdde6510cde2eaa73cf50b741e0b59c7f492"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.48-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
