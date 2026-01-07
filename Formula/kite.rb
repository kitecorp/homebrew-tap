# Generated with JReleaser 1.22.0 at 2026-01-07T05:36:22.801758259Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-linux-arm64.zip"
    sha256 "0644e2f04d3e7347d8ef3309079a382c2180284f1b1efe2deecf4f01ff33dc1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-linux-amd64.zip"
    sha256 "fc47b339a93a2044e7dabb08cf46c1d1e7fab29a6db19e733ac196eb612107a4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-osx-arm64.zip"
    sha256 "06c5c7aa08af15429a35c2d752222875b6ba8c753cca35b051ebfbb3fe9253cd"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.3/kite-0.3.3-osx-amd64.zip"
    sha256 "0bf964ce8ed839cdd1a6f7ffd06c5e3da66ef2cac6aa09ab55371c3f7d9a7c5d"
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
