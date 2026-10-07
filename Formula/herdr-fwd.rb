class HerdrFwd < Formula
  desc "Automatic loopback port forwarding for remote Herdr sessions"
  homepage "https://github.com/go-min/herdr-fwd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.6/herdr-fwd-macos-aarch64.tar.gz"
      sha256 "7a35c80838ba47ac25934f5c290b10f25095a59132d02ccedb7a6bab94c6933e"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.6/herdr-fwd-macos-x86_64.tar.gz"
      sha256 "6ae3e2420fd72703dbb88c784f83f98f1543b4a808e78fc027544b96d6a9d206"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.6/herdr-fwd-linux-aarch64.tar.gz"
      sha256 "3c39e7c0e0e8cbb1558b04df342d8835c2065728eb442d7ba430e61e71a77a11"
    else
      url "https://github.com/go-min/herdr-fwd/releases/download/v0.1.6/herdr-fwd-linux-x86_64.tar.gz"
      sha256 "56415e5562c8ceb937312aeb866951f625931ba37e9572d0786467d0f5abcf95"
    end
  end

  def install
    bin.install "hfwd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfwd --version")
  end
end
