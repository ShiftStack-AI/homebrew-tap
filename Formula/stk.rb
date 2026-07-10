class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.24.0/stk_darwin_amd64"
      sha256 "08c7d544837939cc3a130255358af2adeb985ffdba05158093f61a20c446df55"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.24.0/stk_darwin_arm64"
      sha256 "75bc96439eb29c394c545610c4015908fbef5c6d85f1d4d6b39c6d86fab73efc"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.24.0/stk_linux_amd64"
      sha256 "9c7dce8c137d402c0dc5d93a598ead89849020e7b8e598010ab6f5e80bcf07e9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.24.0/stk_linux_arm64"
      sha256 "64e37d14ced9f99b9523bd47d12cb0710d45a2a2e8d2268ee72b4ce2246f98dd"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
