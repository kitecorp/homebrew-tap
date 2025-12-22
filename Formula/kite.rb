# Generated with JReleaser 1.21.0 at 2025-12-22T21:10:48.50685089Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-arm64.zip"
    sha256 "ec0efbcc873e1c1eed798f78eafcdd63b303f1c40034873162ceb0fe340ac579"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.2", output
  end
end
