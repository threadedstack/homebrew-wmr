class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.25/wmr-0.0.25-macos-arm64"
  version "0.0.25"
  sha256 "809c2b6e55cd51ddfdddf0484efb63a017ab3558e8d151e15dae667e372a9c02"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.25-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
