# Generated with JReleaser 1.21.0 at 2025-12-23T23:34:39.123041247Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-arm64.zip"
    sha256 "c1146f92072d2fe41c098c46808d7505bf283625b9f45c6f60f41fd768526547"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-amd64.zip"
    sha256 "032583826c6d2ce04bed681d03936782e84a039187533c22bd02bdb5e275652f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "30c00b6668fdb1099f26d7744ecb92a3bc8359a8fff38cfc0b7af85175a3ebb7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-amd64.zip"
    sha256 "e9aabfa5991c66228999347b675014ffd56c1fe81eb6b1fe7669dfd6973cf7b0"
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
