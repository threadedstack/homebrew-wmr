class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.39/wmr-0.0.39-macos-arm64"
  version "0.0.39"
  sha256 "2998e2ed3d19131c7616e53c6a77b33eb83a27c4632388bdb5cd92f7de888fbb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.39-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
