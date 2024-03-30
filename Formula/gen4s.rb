class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.0.15/gen4s-app-0.0.15.zip"
  version "0.0.15"
  sha256 "1e7f1ee00ffe17d5c7d3c9e9ee6ad295f7d0b28b276ce6f8ff26f60970b7ae5e"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
