# Generated with JReleaser 1.21.0 at 2025-12-31T01:29:47.920863897Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-arm64.zip"
    sha256 "5111e17a32ef13e726fa25b452858e49306ce4632f39587131bf573d73043de3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-linux-amd64.zip"
    sha256 "0b8ad329c1f8a0d61a122dff453b24748c52e2b26ff26785c7c4f4a440bcd2cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-arm64.zip"
    sha256 "64161e70d12a3a35e716751e915690fe0cd8e71d96ea36191b5768fdb1397240"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.4/kite-0.2.4-osx-amd64.zip"
    sha256 "cdd6d0e36caf919287dfeed09903ed9154ecbde1210dd16e68ccb4d651334123"
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
