# Generated with JReleaser 1.22.0 at 2026-01-12T10:11:30.330842372Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.12"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.12/kite-0.3.12-linux-arm64.zip"
    sha256 "b0ebc04574a585a879773fe05674f10273886284823d9bc55deacac79d7ec6a3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.12/kite-0.3.12-linux-amd64.zip"
    sha256 "c22eefcbe88a5446c095a09446c882f48026815fc48a9d03ce4d9ce031666c4d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.12/kite-0.3.12-osx-arm64.zip"
    sha256 "ecb8a769e861a9c6ac09fc0598aad64b392e99c47645cf9ca56106ba4af4ce1c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.12/kite-0.3.12-osx-amd64.zip"
    sha256 "e88bf5adcbda1a905f765f20fb86aeef535aa0439b6e0c3a43ef578d808aae8a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.12", output
  end
end
