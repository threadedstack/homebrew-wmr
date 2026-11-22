class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.10/wmr-0.0.10-macos-arm64"
  version "0.0.10"
  sha256 "b8560ec5fc28a4dba0fcc90e0224d1869324f0b042f0880b7c3a1a5983adf2a1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.10-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
