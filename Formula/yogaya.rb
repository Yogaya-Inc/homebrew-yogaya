class Yogaya < Formula
  desc "Yogaya CLI"
  homepage "https://yogaya.com/"
  url "https://github.com/Yogaya-Inc/yogaya-cli/releases/download/v1.2/yogaya"
  version "1.2"
  sha256 "e6f59b6ac3ac3e541d961d015a6f0f835e8db422b6036c7335139ffc096fbc56"
  license "Apache-2.0"

  def install
    bin.install "yogaya"
    chmod 0755, bin/"yogaya"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/yogaya --version")
  end
end
