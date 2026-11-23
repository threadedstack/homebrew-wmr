class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.37/wmr-0.0.37-macos-arm64"
  version "0.0.37"
  sha256 "f3ca6f8b967416a3b722db762ec3cbe62565593aadf3439bbd0ba79ed9183d30"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.37-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
