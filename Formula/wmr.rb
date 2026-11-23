class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.43/wmr-0.0.43-macos-arm64"
  version "0.0.43"
  sha256 "ae72ed6acd4c65e7a3ef5a165b1a471b9924ddcda474333719c3fc5844ea660a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.43-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
