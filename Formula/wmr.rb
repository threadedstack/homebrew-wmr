class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.22/wmr-0.0.22-macos-arm64"
  version "0.0.22"
  sha256 "a453240415062229f5140c8f3543f199e1df6c2bc30fdc1f5de3e68a518d34aa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.22-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
