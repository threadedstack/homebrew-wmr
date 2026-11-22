class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.27/wmr-0.0.27-macos-arm64"
  version "0.0.27"
  sha256 "bfc6fecc2477050c6284fdc355e8326d7f220b63a674ede59440ead57cbf878d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.27-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
