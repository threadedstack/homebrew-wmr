class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.35/wmr-0.0.35-macos-arm64"
  version "0.0.35"
  sha256 "394bf76a2bd81deadbb8a11d030d0a9f84ec4101d2eb004141d8bc64460d0b74"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.35-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
