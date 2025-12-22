# Generated with JReleaser 1.21.0 at 2025-12-22T16:34:43.999227368Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-arm64.zip"
    sha256 "eb1bf0d3d7b6dca86c2e334e040e6c8860fd1ea7a995f858139b96b4ecba2ffb"
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
