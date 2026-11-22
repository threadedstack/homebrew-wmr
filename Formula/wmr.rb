class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.30/wmr-0.0.30-macos-arm64"
  version "0.0.30"
  sha256 "773bae1d9600fe8bf78cac6848ad4bd9421cc1becc9019506ce87207a2bb3882"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.30-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
