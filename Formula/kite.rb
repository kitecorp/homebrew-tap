# Generated with JReleaser 1.21.0 at 2025-12-21T17:57:28.144749461Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-linux-amd64.zip"
    sha256 "5d7db6a7cbdd4dde13664d437b08d17a3e0c9edcd12bd3fd709263b1d1efc8b7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-arm64.zip"
    sha256 "7226ad235c98db63a663fde39f2f4a4e67e20aa6f5a69fe79cbc45acbc912a77"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-amd64.zip"
    sha256 "6ef698c1fd0ca490f7d29ca3b6fa48c69cde8654709d5dbf16ad233f5301c412"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.2", output
  end
end
