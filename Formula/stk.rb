class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.48.0/stk_darwin_amd64"
      sha256 "d27ec4f87ab4b27e0f924b55395ed9de975308904c226fff6df12f71048ce78f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.48.0/stk_darwin_arm64"
      sha256 "a4b3bb20b6d557cae0f982f7d6a921021c293e0bcb5046c81c0b15dabdd296a9"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.48.0/stk_linux_amd64"
      sha256 "46fb1f9516a67a7735bf8a9a81c27d0d7af4fc547190f6868358e41a1b823524"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.48.0/stk_linux_arm64"
      sha256 "b0292252c2ccf2c1946e54aa19817d32906283c33af5a7ef1b5f9c29e04d106f"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
