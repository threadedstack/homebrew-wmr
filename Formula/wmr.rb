class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.45/wmr-0.0.45-macos-arm64"
  version "0.0.45"
  sha256 "e9cb22a49c174191cec2c02dd301864478ed02492f77b990b2269674011bc0d3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.45-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
