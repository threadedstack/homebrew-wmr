class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.20/wmr-0.0.20-macos-arm64"
  version "0.0.20"
  sha256 "50bb23bce55486021d41ff2fb848711bece391074a14c11f69724066c5769db8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.20-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
