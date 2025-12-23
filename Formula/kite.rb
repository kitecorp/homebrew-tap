# Generated with JReleaser 1.21.0 at 2025-12-23T01:01:40.596311719Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.2/kite-0.2.2-osx-arm64.zip"
    sha256 "ba6dcf0757d4bdefad2c6e936c407cff9b2b8192a66eb2b73d1525cf11b8a464"
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
