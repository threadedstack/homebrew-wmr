class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.51/wmr-0.0.51-macos-arm64"
  version "0.0.51"
  sha256 "11e316f400c142d780e07aab81aadf2e59aa2ee279158d3a6e841b957b546669"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.51-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
