class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.14/wmr-0.0.14-macos-arm64"
  version "0.0.14"
  sha256 "f96ed83edf820a5c472719c62d4dd2be3a65e9cda3b6f06b51e72cfd3c8f93b6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.14-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
