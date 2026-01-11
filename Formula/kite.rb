# Generated with JReleaser 1.22.0 at 2026-01-11T04:47:35.71990251Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.11"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-linux-arm64.zip"
    sha256 "e8507c830ca1a832fb1bdfc99729f81809bc0020eb549cfe5b0591fb2817f230"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-linux-amd64.zip"
    sha256 "8e220230c43fbb05b1e0e9f787b0394ded234c5cda2970ee3f5fae6365ba05be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-osx-arm64.zip"
    sha256 "ddd1c1a636be09ffb7cc1f9bdb4a67d97d83bb74e0cbc0bb8cde41a94c631d42"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-osx-amd64.zip"
    sha256 "2214baf64e6f0b64d916f776c024b80e15a031bf217e224c04ac7e286ba4fd8f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.11", output
  end
end
