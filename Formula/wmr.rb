class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.53/wmr-0.0.53-macos-arm64"
  version "0.0.53"
  sha256 "d1a8352237d85a7ee7ec401ac3936d1c4a94fad0d27719c275ebd398098131df"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.53-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
