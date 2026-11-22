class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.29/wmr-0.0.29-macos-arm64"
  version "0.0.29"
  sha256 "fb41e96c4acd11784c66890fc1e1402e4168c669be791627fa0443d8e47cc4cb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.29-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
