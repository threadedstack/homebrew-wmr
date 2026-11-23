class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.33/wmr-0.0.33-macos-arm64"
  version "0.0.33"
  sha256 "9a10ba64a42191a1e5b00e5d4023a5685851fc4cffffba05786480fda390d40b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.33-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
