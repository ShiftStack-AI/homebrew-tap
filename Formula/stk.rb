class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.1/stk_darwin_amd64"
      sha256 "1f646dde5ec5baf13868dcc585cd749bad3946328e9535bb0b7260553869e402"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.1/stk_darwin_arm64"
      sha256 "00b5dee70f9d233c093590e49c130f93dccc655fad7c3c889c53f2ff92bd562e"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.1/stk_linux_amd64"
      sha256 "7f0beb59bc62fc3d884c4b141a182af7d9b1027ae1d30f137975900439a36e99"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.1/stk_linux_arm64"
      sha256 "1f5607db6563f5e3c4b358318e6ce61fbaf6af9a32a7811941d1d0756afc0b8e"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
