class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.1.1/gen4s-app-0.1.1.zip"
  version "0.1.1"
  sha256 "8c1ebed6619020d22726bee2ae1e08b2817b37d009b410129aa5a8ed9058355e"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
