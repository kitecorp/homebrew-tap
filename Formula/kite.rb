# Generated with JReleaser 1.21.0 at 2025-12-23T01:17:29.642656819Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-arm64.zip"
    sha256 "c53c495d25cea21283a6a73793195380eb878515fcc7b6f4df7ed28665bf49f1"
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
