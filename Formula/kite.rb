# Generated with JReleaser 1.21.0 at 2025-12-24T12:39:20.243648128Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-arm64.zip"
    sha256 "4bbeed889636f71f30a5969f07a2cfc64cf13c8a28965504534f0183abfa1e20"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-amd64.zip"
    sha256 "302300f39ae0a0f72dcfdb70d4f76b69bf9d391b3ddd16afc2735e46dd2a98db"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "64863f583674fd6cf2b02e01fc6b90d384221eafb022d03884ff5b8743ade382"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-amd64.zip"
    sha256 "c12ca19c9c24425b871765e7fea4fe3bac4286f1895ecc2cbded363352f7bfcc"
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
