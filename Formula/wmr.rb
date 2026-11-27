class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.63/wmr-0.0.63-macos-arm64"
  version "0.0.63"
  sha256 "06a769ac66cd64c957e4f35d453435b17b89ff46a2fcd98a80ba2485b84a730e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.63-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
