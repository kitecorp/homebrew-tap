# Generated with JReleaser 1.21.0 at 2025-12-23T16:34:56.698785831Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-amd64.zip"
    sha256 "08a8ff85fa4f19ae8e62d8a418584ab7901cf986ad138b89799bb2ca37a4836f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "e1a04a2f19be7cec189474469f5dd31829ba49cf43b928364a6972011541d4e6"
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
