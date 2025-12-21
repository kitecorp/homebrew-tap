# Generated with JReleaser 1.21.0 at 2025-12-21T16:14:50.799870838Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-linux-arm64.zip"
    sha256 "4cbaa4a0709dbd255adf29cc35aaade48df397a7f6a35c1d48219aeef6c60793"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-linux-amd64.zip"
    sha256 "e81d3a27c3b6a5ba36b2a87675735d928a46859bc29dd8784baf76985c2c18cf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-osx-arm64.zip"
    sha256 "43b0c7222b6a173ac788c5934ee66aa2e51332062aa8c784db848239ae953a01"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-osx-amd64.zip"
    sha256 "e2f4b97cfa8ed44a98086accbb5b41c59fb5e19873da560b33483254dd69cafb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.1", output
  end
end
