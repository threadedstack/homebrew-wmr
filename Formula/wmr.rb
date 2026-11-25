class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.50/wmr-0.0.50-macos-arm64"
  version "0.0.50"
  sha256 "be2885c41c3b785362719b6c532ee9b5b1406b5c67eba663e9ecde373cf9e0db"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.50-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
