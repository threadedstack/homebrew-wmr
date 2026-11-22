class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.11/wmr-0.0.11-macos-arm64"
  version "0.0.11"
  sha256 "6fa50ddd6ba7033f6a7aead77fd3d236c54a4f2d70e2a94c1524484517ac0a79"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.11-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
