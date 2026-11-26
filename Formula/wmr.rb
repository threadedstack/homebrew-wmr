class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.58/wmr-0.0.58-macos-arm64"
  version "0.0.58"
  sha256 "66bb7e81e8084cfd4a5124b695228cdbb8818cafa05d7c82d29a4a0c55e7d70c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.58-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
