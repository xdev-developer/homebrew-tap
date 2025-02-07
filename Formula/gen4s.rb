class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.1.0/gen4s-app-0.1.0.zip"
  version "0.1.0"
  sha256 "5041578805455473ce9ac79d64d835823b42088d2aa21979d6359e17083fa2c1"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
