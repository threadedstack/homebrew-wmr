class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.3/wmr-0.0.3-macos-arm64"
  version "0.0.3"
  sha256 "36c1b6e42c8dbefcb4ae711da30fa980cfc96ae85260d393ff6a2a19fdba16bf"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.3-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
