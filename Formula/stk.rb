class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.21.0/stk_darwin_amd64"
      sha256 "c788ddb5a369faabe7e7747ee076260a4a3072e1435a74ff69e6c4cc93962dba"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.21.0/stk_darwin_arm64"
      sha256 "0d65c17d610924adac0bef471a3bc7d28bd35b92357695344f2d7e78cd9141b9"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.21.0/stk_linux_amd64"
      sha256 "c59e5301ba559926f53b6bcc2fd7c190dfbf6b428d1eb5fc31fd6d0ac58f8b39"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.21.0/stk_linux_arm64"
      sha256 "31a7e777d039c69558d6ffed62e57c1a1f4aa84a491ada83ec381037d12ad722"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
