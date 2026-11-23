class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.41/wmr-0.0.41-macos-arm64"
  version "0.0.41"
  sha256 "0b85253fff2f79d5c8b9c0a0495b41f155bd37648cd4f072088337190671fcf7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.41-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
