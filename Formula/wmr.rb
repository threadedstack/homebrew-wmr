class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.28/wmr-0.0.28-macos-arm64"
  version "0.0.28"
  sha256 "ce97fcc9d133be593615b596dbad2cf3904dbda24e2c3b5a0572fc659fbde003"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.28-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
