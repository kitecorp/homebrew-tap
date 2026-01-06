# Generated with JReleaser 1.22.0 at 2026-01-06T17:38:04.842813702Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.2/kite-0.3.2-linux-arm64.zip"
    sha256 "3d204b37b76f7a361a8a90616aba33f3663997ea3c06facb753b48f9e32b2e7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.2/kite-0.3.2-linux-amd64.zip"
    sha256 "ddd5de743dc5d2f131d120edd594db0da19b25c5028299e38a49fa5e02fa6173"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.2/kite-0.3.2-osx-arm64.zip"
    sha256 "a5aae5364b9d0e2b74a9a73e693aea9c630ca81fc22f355c76e564fd4be36d24"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.2/kite-0.3.2-osx-amd64.zip"
    sha256 "a697883fe3ad8ed0bff0f178c48740c903f751fa2dd02d9b7a47d83f1a78d21d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.2", output
  end
end
