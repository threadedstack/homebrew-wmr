class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.13/wmr-0.0.13-macos-arm64"
  version "0.0.13"
  sha256 "48537f88a1d8063752b1e4c36b607e552e567908c3813edc4f09f7fa9f0d6c02"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.13-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
