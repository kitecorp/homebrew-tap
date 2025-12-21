# Generated with JReleaser 1.21.0 at 2025-12-21T14:23:44.475047017Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.0/kite-0.2.0-linux-x86_64.zip"
    sha256 "ba7fc57ccd778ceb57a4b724b2ac11da9e0f7ac782ff37783aec5bc0ea52ca06"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.0/kite-0.2.0-osx-aarch64.zip"
    sha256 "b55cb89a9932086f9a9602c5507a86330134a1a86d73bae0708fddfe10000f55"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.0", output
  end
end
