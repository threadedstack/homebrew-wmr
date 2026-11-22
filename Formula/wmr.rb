class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.17/wmr-0.0.17-macos-arm64"
  version "0.0.17"
  sha256 "e05b0c122dc8839950e7cc9341326cca88ca21c24b7518ba82a851943bb00283"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.17-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
