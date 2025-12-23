# Generated with JReleaser 1.21.0 at 2025-12-23T19:43:57.978524624Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-linux-amd64.zip"
    sha256 "5a16e1377b8167e5e3f60aa177c8f58b845c47682e74f721a6efc7612e0cd357"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kitecorp/kite-cli/releases/download/0.2.3/kite-0.2.3-osx-arm64.zip"
    sha256 "a6b93622b5f3d955457b1bb3a2cb06d365ead5f14a7a6fb9d702d45b6d6c938a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kite" => "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.2.3", output
  end
end
