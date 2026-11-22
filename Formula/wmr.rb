class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.16/wmr-0.0.16-macos-arm64"
  version "0.0.16"
  sha256 "8dda0b3f8cfa7e0bc3dd8aba68302aae3a31d9a1bfc3582f3ed2a64ba119e8b3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.16-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
