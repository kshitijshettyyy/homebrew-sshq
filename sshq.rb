class Sshq < Formula
  desc "SSH alias manager and connector"
  homepage "https://github.com/TheBoredEngineers/sshq"
  version "1.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/TheBoredEngineers/sshq/releases/download/v1.1.0/sshq_darwin_arm64"
    sha256 "<AUTOMATED>"
  else
    url "https://github.com/TheBoredEngineers/sshq/releases/download/v1.1.0/sshq_darwin_amd64"
    sha256 "<update-manually-if-needed>"
  end

  def install
    bin.install "sshq_darwin_#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "sshq"
  end

  test do
    assert_match "sshq", shell_output("#{bin}/sshq --help")
  end
end

