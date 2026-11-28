class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.64/wmr-0.0.64-macos-arm64"
  version "0.0.64"
  sha256 "00063222751fa4a8621339e8317505358fd85472a818a4d35e97694ed020dc25"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.64-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
