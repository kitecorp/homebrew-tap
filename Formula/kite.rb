# Generated with JReleaser 1.21.0 at 2025-12-21T15:43:22.351204206Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-linux-x86_64.zip"
    sha256 "f69963ec172f7935981eaa59729c055a62491af8dc7fa9c2a479f0f337d15def"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-osx-aarch64.zip"
    sha256 "1bec5dc0a305edbfc88832ff6b48a6712bc8500c0854a355898d8d01803d1414"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.1/kite-0.2.1-osx-x86_64.zip"
    sha256 "f25c2c8987486e86246aca3ba606f1a5798b5003737af5c489effed97f1e9af4"
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
