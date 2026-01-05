# Generated with JReleaser 1.22.0 at 2026-01-05T22:22:23.210695346Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-arm64.zip"
    sha256 "d73e3b8ba3fbf2a0be3d8c15dd56a1c5c482a16f4c49876393d9e624db12d458"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-amd64.zip"
    sha256 "e21e40fc2c7bfddc13e45f7ebb63c070456c0a74e22f06523e31c73ca5100afa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-arm64.zip"
    sha256 "abc0a014e0ac6874ddf82abb4c013854489c2aeb38769e47b585444394805184"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-amd64.zip"
    sha256 "178207b1e5322120bfe8254061fe8b8d49993ac279dba304ba160454144863ed"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.4", output
  end
end
