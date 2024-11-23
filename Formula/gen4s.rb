class Gen4s < Formula
  desc "Data generator tool for developers and QA engineers"
  homepage "https://github.com/xdev-developer/gen4s"
  url "https://github.com/xdev-developer/gen4s/releases/download/release-v0.0.20/gen4s-app-0.0.20.zip"
  version "0.0.20"
  sha256 "e2ef070c560f3ab53f828f84f13a2050af0787a566b67e6e2ae199c33623fcde"

  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Gen4s", shell_output("#{bin}/gen4s --help")
  end
end
