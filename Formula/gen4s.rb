class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.1.4/gen4s-app-0.1.4.zip"
  version "0.1.4"
  sha256 "3c54d02a1eca8f1ba3c08852fd70fc82be01adfef4f5b3e09c79883b845b0b78"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
