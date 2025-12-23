# Generated with JReleaser 1.21.0 at 2025-12-23T10:32:09.022191429Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "f0d28c3410bf6fe1eebed2a3cbded7c612e89d54bbe5e92e2df2e2e69aae683a"
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
