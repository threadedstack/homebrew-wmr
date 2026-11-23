class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.40/wmr-0.0.40-macos-arm64"
  version "0.0.40"
  sha256 "ec90987e22c9497342ba06f3befd61b0f133bb8cafd4bdc13a9f19b70c1aa755"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.40-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
