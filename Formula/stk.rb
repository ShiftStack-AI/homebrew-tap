class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.4/stk_darwin_amd64"
      sha256 "8b8297814eb06dbd59cb5a66294d08f1ee44562102df27786700577481eb9553"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.4/stk_darwin_arm64"
      sha256 "4a3d973311b412b110b1dc3247eb50dbde656e9c254be5fd9f7812935252f0bb"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.4/stk_linux_amd64"
      sha256 "f02f38d76c5afeb9500318ac60796ff028deb02b4d89360736cfc9dbe8be729b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.4/stk_linux_arm64"
      sha256 "43546d46b25b0f66d7e6f166b5f2968394f426c3cfb2141a8208cb8847c4bb14"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
