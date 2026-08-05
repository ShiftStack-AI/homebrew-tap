class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.2/stk_darwin_amd64"
      sha256 "02a8f04e4eb682600c297b0e8c208282dc210f3df461221ecf3a972ab083ab78"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.2/stk_darwin_arm64"
      sha256 "38aa8a8cee077273053119481effa0a3603b519da90ec6ca0a8943a49bdb5312"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.2/stk_linux_amd64"
      sha256 "a5f83d95c0823e91e2f57d15f7b9b387d285c8f6207310fefed18d86d3cb15ed"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.2/stk_linux_arm64"
      sha256 "84f83e4cd7710f09a335e11a4556ea580acba741fd434b69d03fd7bf88c77523"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
