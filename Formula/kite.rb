# Generated with JReleaser 1.22.0 at 2026-10-16T02:06:49.932781584Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.5.0/kite-0.5.0-linux-arm64.zip"
    sha256 "03379ea5a2e8fc00585dc3adb1d719f66e81bd52761aa0253364a3578a7821de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.5.0/kite-0.5.0-linux-amd64.zip"
    sha256 "f364b177881c491d1f954c5bbaf2699f82689b1f07e3c79947d3fa2c8952c99f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.5.0/kite-0.5.0-osx-arm64.zip"
    sha256 "f64d754d84c3a7ea47fddb88093ad5ba986617401a1e5473dbe0c3ecbbcf79ed"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.5.0", output
  end
end
