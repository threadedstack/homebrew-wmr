class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.38/wmr-0.0.38-macos-arm64"
  version "0.0.38"
  sha256 "07a4228b15f57306ea8098f4ad67e9e6e0d4b86ef367ee84d31b8ca0642cbf48"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.38-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
