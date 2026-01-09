# Generated with JReleaser 1.22.0 at 2026-01-09T22:46:50.472180835Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.6/kite-0.3.6-linux-arm64.zip"
    sha256 "40d911b11bdcd3d451ebfe649155b07897f76d5d7f31efa2ecbbbaf0b336699b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.6/kite-0.3.6-linux-amd64.zip"
    sha256 "d0680cd5290bda1779dfea6016ee7051572b15137c73d4519c518adebbc20397"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.6/kite-0.3.6-osx-arm64.zip"
    sha256 "3be37b9faebd558051727a5edc64be86b482c8540906d8fb766de0e0e1b6aeab"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.6/kite-0.3.6-osx-amd64.zip"
    sha256 "18d11383df30c0bb9256757acde50227d95b73424e9d692280e008626ccddc12"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.6", output
  end
end
