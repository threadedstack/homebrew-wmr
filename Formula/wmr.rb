class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.54/wmr-0.0.54-macos-arm64"
  version "0.0.54"
  sha256 "fb8f68889da30c469916f002f1fcb21ce719b607dedc3de61ab934589223722d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.54-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
