class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.55/wmr-0.0.55-macos-arm64"
  version "0.0.55"
  sha256 "470dccafe73795ee790de4f765441e98d436b80e33925d0a4f420d6ecf5893ef"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.55-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
