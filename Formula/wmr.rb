class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.12/wmr-0.0.12-macos-arm64"
  version "0.0.12"
  sha256 "70ce90df333ed2fbbbe2bd9317be795aaf8071290ff3450fcd87c0b910cec3a7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.12-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
