class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.7/wmr-0.0.7-macos-arm64"
  version "0.0.7"
  sha256 "bcb9276d87623d772bc87857b0e2cec36a2f0f433f02f9e8b7da6c5f35bad187"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.7-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
