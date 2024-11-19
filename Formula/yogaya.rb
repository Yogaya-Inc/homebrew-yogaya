class Yogaya < Formula
  desc "Yogaya CLI"
  homepage "https://yogaya.com/"
  url "https://github.com/Yogaya-Inc/yogaya-cli/releases/download/v1.1/yogaya"
  version "1.0.1"
  sha256 "530268f13c5d749639881299b3d1195787d70578ff7bc1b99fa258679326580b"
  license "Apache-2.0"

  def install
    bin.install "yogaya"
    chmod 0755, bin/"yogaya"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/yogaya --version")
  end
end
