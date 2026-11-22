class Wmr < Formula
  desc "wmr: projects and machines"
  homepage "https://github.com/threadedstack/wmr-releases"
  url "https://github.com/threadedstack/wmr-releases/releases/download/v0.0.23/wmr-0.0.23-macos-arm64"
  version "0.0.23"
  sha256 "9b15687a60c1578c319897db95dcd8038465d917304809d6d857dedcec9cd597"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "wmr-0.0.23-macos-arm64" => "wmr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wmr --version")
  end
end
