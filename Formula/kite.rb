# Generated with JReleaser 1.22.0 at 2026-03-22T22:12:21.497325473Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.4.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.4.1/kite-0.4.1-linux-arm64.zip"
    sha256 "10a76375cd33512287ddff5c9a2ede0ff9cd8d5a33445e16258d58508419aa9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.4.1/kite-0.4.1-linux-amd64.zip"
    sha256 "0caa3ca1391ac1196f7277755377e9e96f02bc11537a0bc4fd6715b16614971a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.4.1", output
  end
end
