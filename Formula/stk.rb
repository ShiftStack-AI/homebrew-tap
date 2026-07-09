class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_darwin_amd64"
      sha256 "ac6c73e1a2ab9b9507bfd31f336b52e6a6808dce995c6e5cf138303fb2a464bb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_darwin_arm64"
      sha256 "7371e413a028898bedc2be9e40198bc9bc59747988e7a40bb09afe7d084600fa"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_linux_amd64"
      sha256 "486eb2954eff687a2d66d619ec4a6ef63e221a5d61feac82d8348127662fefea"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_linux_arm64"
      sha256 "d64b27beaeadff888907c3b3feee9ef9f69b463eca1dcf3b6ca58491bf58f6bf"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
