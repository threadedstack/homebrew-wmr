class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.4/wmr-0.0.4-macos-arm64"
  version "0.0.4"
  sha256 "f974b679db9fa41987513344f53c57086341684fe5bff6517acaabe543a993ce"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.4-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
