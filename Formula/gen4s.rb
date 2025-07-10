class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.1.3/gen4s-app-0.1.3.zip"
  version "0.1.1"
  sha256 "251903ca4e13fe8c80b536eaa6aa2ae354e2ecd9eec5601ede1ddc2ef7a09fa7"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
