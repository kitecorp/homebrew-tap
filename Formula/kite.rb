# Generated with JReleaser 1.22.0 at 2026-01-07T05:55:20.385542129Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-linux-arm64.zip"
    sha256 "358d03fb7b970d0d51b3da8d22a0a3f12846f664fcfd279c8650e5b511e794d7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-linux-amd64.zip"
    sha256 "d6dcf34aac9733772ebf17894c3bf5548abcea7809e10f09cf5f4c107ba74124"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-osx-arm64.zip"
    sha256 "9bab62b8e8ef5ca4a53cf1ee7fcdf463c15b97722051f49d21c8bca1d23f517b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-osx-amd64.zip"
    sha256 "475185d2c56d80cac9c03b979590207a8c304513e9a1e83102a2fe0bd4507953"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.3", output
  end
end
