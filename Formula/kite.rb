# Generated with JReleaser 1.22.0 at 2026-01-11T01:19:04.55666813Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.11"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-linux-arm64.zip"
    sha256 "78ff954e16aab1c45bbe83ed13be78153ed7d46de3b5b325ddaf20109cb29de3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-linux-amd64.zip"
    sha256 "f792207b699a8edf9c26b46045ac148d94320b6dec9b004b728884845f3e6fdf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-osx-arm64.zip"
    sha256 "361ecba6aae4ff38438c8074193133bdbfa95abba4536659b1fca0ec867626f8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.11/kite-0.3.11-osx-amd64.zip"
    sha256 "d8754569f1790ae846c07abf7b6dcdf839d439fbbbab724afca8aac6d934f725"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.11", output
  end
end
