class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.2/stk_darwin_amd64"
      sha256 "622d949e5b5cb85399e922c650288a3e1b0b2808239d7a4918c0a54d2e33c32b"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.2/stk_darwin_arm64"
      sha256 "2592b81f2d8e7b04796c8ff215c66a0bff81e91793db70353e893a1bb01a4b71"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.2/stk_linux_amd64"
      sha256 "bd45a49715095bfca69943c9bc1be599160fe30b626c307dce8a40f1489aff8c"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.2/stk_linux_arm64"
      sha256 "19475deb14cf52cb16ebe562814c44542f519ed786b5f0a7fe8af38f7571fa85"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
