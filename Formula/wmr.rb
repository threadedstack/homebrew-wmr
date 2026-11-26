class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.57/wmr-0.0.57-macos-arm64"
  version "0.0.57"
  sha256 "3adffc25e82a9c1ac925aea15e0393ffc5115f6354e53eca525936b6b0ce8cfa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.57-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
