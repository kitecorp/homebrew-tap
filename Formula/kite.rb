# Generated with JReleaser 1.21.0 at 2025-12-23T12:39:18.217117757Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "5a122ebfd86178a6507ec975c9c276edaffdf280711af830d754ea27b620cd8d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.3", output
  end
end
