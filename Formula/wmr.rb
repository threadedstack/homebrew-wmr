class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.9/wmr-0.0.9-macos-arm64"
  version "0.0.9"
  sha256 "8affa0920b237df8b2d856eade27ce4ba1eefeb0229c43ec155674add218b686"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.9-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
