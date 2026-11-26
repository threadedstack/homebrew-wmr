class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.52/wmr-0.0.52-macos-arm64"
  version "0.0.52"
  sha256 "acf9912436b9aa9600a0bc9d8fd567c2d352631a9e8a05649bc11099e1c10083"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.52-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
