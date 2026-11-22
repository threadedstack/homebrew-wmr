class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.19/wmr-0.0.19-macos-arm64"
  version "0.0.19"
  sha256 "9d0c6bfadc50a70c6fb593d8d40ce6697893cde2d8a374f821a9e43c97d58a99"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.19-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
