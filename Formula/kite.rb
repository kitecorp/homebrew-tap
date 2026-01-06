# Generated with JReleaser 1.22.0 at 2026-01-06T15:04:48.714069033Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite-language"
  version "0.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-linux-arm64.zip"
    sha256 "430d3a3998c96826bb451a5e22f5c4d256fdabb6022e892a94ad6984c7f92f17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-linux-amd64.zip"
    sha256 "b82326f2dac69791612803ef41765ae253d8968a9ea23b0d66780fa50443353f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-osx-arm64.zip"
    sha256 "f3a26fa1d37abd74ec03666786d1330850c0254f9f5ebad5dd8f7f7f5279b6ce"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/v0.3.1/kite-0.3.1-osx-amd64.zip"
    sha256 "843ffcece26255178a5a20718f5daba934345f73b8e5c828247f6f9c0f4cdb7b"
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
