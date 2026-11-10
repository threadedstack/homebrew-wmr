class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.1/wmr-0.0.1-macos-arm64"
  version "0.0.1"
  sha256 "8aaf5c9849e8e196757d048ae65705343a3191e7908eeef6e757e518db723392"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.1-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
