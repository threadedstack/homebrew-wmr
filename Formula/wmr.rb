class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.5/wmr-0.0.5-macos-arm64"
  version "0.0.5"
  sha256 "a188a3b173043011ff3e28678b232c74909b7d8ba48e297f52cd54553ce37fba"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.5-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
