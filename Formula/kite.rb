# Generated with JReleaser 1.21.0 at 2025-12-23T23:29:44.276099365Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-arm64.zip"
    sha256 "edf7b4c960a4435e0c0dfa71444767b4833d84368c0811999d57518a160dc3fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-amd64.zip"
    sha256 "8aabef8624c88b020da5110a4899841fa6dc909a60a3c5f29b65a701d2ac9f0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "47a5ea583de5d4e6220b2fc2e885615f9a24a7d37e1eefa59069c5222c5f3322"
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
