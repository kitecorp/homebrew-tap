# Generated with JReleaser 1.21.0 at 2025-12-31T17:23:32.1075357Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-arm64.zip"
    sha256 "c14d0f5f6df1d624fce364d32946a8b86f5013302ff224b06907b4c99b97fd6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-amd64.zip"
    sha256 "9cfc7968557920c5b71d92b6a66842832fecb0bbd7b8296617bfcd262bfe57b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-arm64.zip"
    sha256 "eab2bb4b250005dee93ba557dc40efe9de2c42d305a13c0d7f801a3fb24d62b1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-amd64.zip"
    sha256 "7d1b2a9f279843450ae646dcebb97af03062e25740072606712212a2b34c2e15"
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
