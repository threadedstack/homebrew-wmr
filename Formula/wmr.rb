class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.8/wmr-0.0.8-macos-arm64"
  version "0.0.8"
  sha256 "f6596c9c36d961d137ba88c222274304a7f23340dfd328c9ca184bd092f270d9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.8-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
