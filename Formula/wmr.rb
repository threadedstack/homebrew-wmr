class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.56/wmr-0.0.56-macos-arm64"
  version "0.0.56"
  sha256 "d9b281b09f05ae08f97a9cd1b8ce8306054cc18b5b172348365160d2dae0f2da"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.56-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
