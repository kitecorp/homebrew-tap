# Generated with JReleaser 1.21.0 at 2025-12-31T01:08:40.226929078Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-arm64.zip"
    sha256 "c7294c8ee66e5cdb6756bae20f80d088004c824f011dbf854470b1190241ddc9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-amd64.zip"
    sha256 "9e16172101bb2c7843c0587aef3e3916e02a19f8e94844a65b9561f32be42146"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-arm64.zip"
    sha256 "1f61366ed93b4195c419a8aa28942a9d9603fe63894dfb01a52e7dae4c691094"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-amd64.zip"
    sha256 "4702d5747861850c605aaafd99cc0d7de7781d7664d8e7b1b8c48ccc18284812"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.4", output
  end
end
