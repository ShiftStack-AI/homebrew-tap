class ProtonDrive < Formula
  desc "Proton Drive CLI — sync and manage files from the terminal"
  homepage "https://proton.me/drive"
  version "0.4.6"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/proton-drive/v0.4.6/proton-drive_darwin_amd64"
      sha256 "647f56db3f0559b6ac8031a9fce95c46537827940d684a7524a90d4fcbb428ff"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/proton-drive/v0.4.6/proton-drive_darwin_arm64"
      sha256 "7f579ff56aa57657f68f27ff70e322388874f57a52df6396524b14de763ce33c"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/proton-drive/v0.4.6/proton-drive_linux_amd64"
      sha256 "89a54131a0811e42ea18ec43073d6eb347d80f594ed0226009bb94118f4cda86"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/proton-drive/v0.4.6/proton-drive_linux_arm64"
      sha256 "722e36559102dfb28d1897bff891961ea77ae62d63eee327bc6d132d41a2c217"
    end
  end

  def install
    bin.install Dir["proton-drive_*"].first => "proton-drive"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/proton-drive --version")
  end
end
