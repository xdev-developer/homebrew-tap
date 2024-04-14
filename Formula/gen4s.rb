class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.0.16/gen4s-app-0.0.16.zip"
  version "0.0.16"
  sha256 "e38b230f86f562343c7d031407736504bb4054135b85c2694e32f37004030cb3"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
