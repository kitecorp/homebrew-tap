# Generated with JReleaser 1.22.0 at 2026-01-09T22:09:44.736987227Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.5/kite-0.3.5-linux-arm64.zip"
    sha256 "16bb51500ff83383f640fd138b0b7c30bbe809daf16dc652d05e8272653f4b87"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.5/kite-0.3.5-linux-amd64.zip"
    sha256 "4359033529272667e6899b2925faf843ec74c6d81c21903910110d899b143885"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.5/kite-0.3.5-osx-arm64.zip"
    sha256 "70e482f9b68c3aee5c36fb67750482b5859187ba46947617719228717b920ba8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.5/kite-0.3.5-osx-amd64.zip"
    sha256 "bcea589df1f227e9646c7b720b1c680996ad3ba920379dc8ec871fdf8b37f653"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.5", output
  end
end
