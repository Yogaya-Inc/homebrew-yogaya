class Yogaya < Formula
  desc "Demo for Yogaya CLI"
  homepage "https://yogaya.com/"
  url "https://github.com/Yogaya-Inc/yogaya-cli/releases/download/demo/yogaya"
  version "1.0.0"
  sha256 "3bbf0e2952007f0522f8193abb27b13909b4b95cf3ebe8e4432377c0c6450e92"
  license "NOASSERTION"

  def install
    bin.install "yogaya"
    chmod 0755, bin/"yogaya"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/yogaya --version")
  end
end
