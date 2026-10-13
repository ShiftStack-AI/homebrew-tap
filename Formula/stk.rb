class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.12/stk_darwin_amd64"
      sha256 "5bd495f905e09e8a8b2a1e804ca3c9e21ac759616bcdaa2c85b711705d662695"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.12/stk_darwin_arm64"
      sha256 "71c1a8390cdca5a8656eaa8b253f78b103e289940953335f3cf78b383076b04f"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.12/stk_linux_amd64"
      sha256 "3de25ece07c79594707b1b3aaa7def765bddbaa8892da3bcceef3f9df4f07ae1"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.12/stk_linux_arm64"
      sha256 "55873bec6850c4cc5868a224ee5344584a4e16ffe0778d092b7f1ad09c216090"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
