class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.6/wmr-0.0.6-macos-arm64"
  version "0.0.6"
  sha256 "5d8099a5e542aed2eb5eec6cb2ff165dd05f285ad3ea5c3c55bd624403ac9e6d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.6-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
