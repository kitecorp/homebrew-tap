# Generated with JReleaser 1.21.0 at 2025-12-21T09:05:34.27667744Z

class Kite < Formula
  desc "Multi-cloud Infrastructure as Code CLI"
  homepage "https://github.com/kitecorp/kite"
  url "https://github.com/kitecorp/kite/releases/download/v0.1.0/kite-0.1.0.jar", :using => :nounzip
  version "0.1.0"
  sha256 "7d391eea87b7664cb1885a66c28e624ef8c1f0f972da9446a9c7a4b534a362b6"
  license "Apache-2.0"

  depends_on "openjdk" => "25"

  def install
    libexec.install "kite-0.1.0.jar"

    bin.mkpath
    File.open("#{bin}/kite", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/kite-0.1.0.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "0.1.0", output
  end
end
