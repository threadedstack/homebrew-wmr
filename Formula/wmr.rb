class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.18/wmr-0.0.18-macos-arm64"
  version "0.0.18"
  sha256 "daec2cb186e40a61de756342419a17a9a5eddc14a99bd9f730d81105bbb8b1d8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.18-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
