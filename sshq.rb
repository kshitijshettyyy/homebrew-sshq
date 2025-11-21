class Sshq < Formula
  desc "SSH Simplified for Devs"
  homepage "https://github.com/kshitijshettyyy/sshq"
  url "https://github.com/kshitijshettyyy/sshq/releases/download/v1.0.2/sshq"
  sha256 "f2587b07486d6ac73d55695c66c82b480638afe9a4e560af3d66c74f136cfb61"
  license "MIT"

  def install
    bin.install "sshq"
  end

  test do
    system "#{bin}/sshq"
  end
end

