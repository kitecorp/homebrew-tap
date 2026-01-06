# Generated with JReleaser 1.22.0 at 2026-01-06T16:52:13.350975747Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-linux-arm64.zip"
    sha256 "cb918a78da6d6afaaddfe59fa683271e7b57d7e92e90c3cf873a260cbb76332f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-linux-amd64.zip"
    sha256 "c122031d1a9188ac72d2cf997dba8b660cfbe67ba99585f6944e6da3bc110f59"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-osx-arm64.zip"
    sha256 "3e5b9e16a1d9fdd9de77f1f207e68732782f26e9f158fba316e0c99db4a85084"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-osx-amd64.zip"
    sha256 "f71b6af7061e2f11cfa135073f7e88a534c4529a3b2f255ae914b7f953400e67"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.3.1", output
  end
end
