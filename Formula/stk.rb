class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.2-dirty"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-dirty/stk_darwin_amd64"
      sha256 "1cd938119b6f2ac423fa0c1da186693a6b4d88c68f96489b776dd3412d49a468"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-dirty/stk_darwin_arm64"
      sha256 "56cfc9556beefa00098c5fa2b9f6cdbfc640e4042d56c9317ae8a64bc966e7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-dirty/stk_linux_amd64"
      sha256 "66d9d21deeebb9e76793ace51f0073755ca3f06d9951fc754040df3cd7022674"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-dirty/stk_linux_arm64"
      sha256 "6d0894bc70f21ec4e3c2f4202cb52b2ac8e63d4c24dcc7e227cf98c32c56c2d0"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
