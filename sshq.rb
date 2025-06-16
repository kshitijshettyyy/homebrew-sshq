class Sshq < Formula
  desc "SSH Simplified for Devs"
  homepage "https://github.com/kshitijshettyyy/sshq"
  url "https://github.com/kshitijshettyyy/sshq/releases/download/v1.0.0/sshq"
  sha256 "3360afe81336a9fb56dea4c56d3cbb1bc580092a396ebdf396159f0d04b4e5cb"
  license "MIT"

  def install
    bin.install "sshq"
  end

  test do
    system "#{bin}/sshq"
  end
end
