class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.0.19/gen4s-app-0.0.19.zip"
  version "0.0.19"
  sha256 "e1bf4cfb687a8a2c5b077f5222ff9450512f8e298d6bc77736b4dfc4994f5881"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
