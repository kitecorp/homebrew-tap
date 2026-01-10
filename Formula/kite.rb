# Generated with JReleaser 1.22.0 at 2026-01-10T04:45:04.905956901Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.7/kite-0.3.7-linux-arm64.zip"
    sha256 "0c9917046545af389e9b4125e54a473eb2406ecc1fedca87f664fcd283a8ee30"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.7/kite-0.3.7-linux-amd64.zip"
    sha256 "6d26815157448dd8e51e806ba04be46ab3492d04357413e998dc9f1b2dbc4b35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.7/kite-0.3.7-osx-arm64.zip"
    sha256 "c93f0506909b268a817ae44499afaca5cec93b6b2d2a407393a63adbe81edf5a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.7/kite-0.3.7-osx-amd64.zip"
    sha256 "f038087c6f278637294dac6dba87b3fca0e0c4583aee16ca76bb8eb08ad475fe"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.7", output
  end
end
