class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.36/wmr-0.0.36-macos-arm64"
  version "0.0.36"
  sha256 "4b397f006745fd375dd02063c0671042b01a82edf7778590dd40c7f1bb810bbf"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.36-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
