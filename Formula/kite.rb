# Generated with JReleaser 1.22.0 at 2026-01-05T23:08:49.331735341Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-linux-arm64.zip"
    sha256 "1959b150f9b9a3366ecc3628f2f05388969d7a5c4ae4282a970e8474f92978de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-linux-amd64.zip"
    sha256 "babf4096ceccf7f7b317c9e456d2447433b7dc009f8dfd31c536f474871a6ca0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-osx-arm64.zip"
    sha256 "80d0e95dacd34c3d97f40719f6f720dda2bf233b74241a1820f5a5119efaf24a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-osx-amd64.zip"
    sha256 "1d6c0105b22f52bbaaaf41b2ee123d5d84e37fc448c7aa011a7222d0519cfbc7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.0", output
  end
end
