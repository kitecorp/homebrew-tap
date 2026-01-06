# Generated with JReleaser 1.22.0 at 2026-01-06T00:01:48.900996491Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-linux-arm64.zip"
    sha256 "65b754ab5941e462437ae93f7ba86723908e1700f6a82fb0451cd7b1f38e5fe2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-linux-amd64.zip"
    sha256 "815ab0074064c2938f864b252034af7667bfbfe6dd4479224679b600c30a6322"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-osx-arm64.zip"
    sha256 "cb5738fb450ce54661d2c1299f23d5f15a6da31cc78631cf0212ce14e3f92106"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.0/kite-0.3.0-osx-amd64.zip"
    sha256 "a443cd7ae719213426b56d369339d981f4cdf7ea4f3bc9d97d2228bb8aaa4afe"
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
