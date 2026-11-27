class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.62/wmr-0.0.62-macos-arm64"
  version "0.0.62"
  sha256 "f95008bb65ba47723e9085b102e340aef8e453e723f7746f53ac2d3789495ca6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.62-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
