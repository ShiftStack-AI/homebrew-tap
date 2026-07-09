class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.8.0/stk_darwin_amd64"
      sha256 "e228f17d247400a0cfcf17e2f068eaa05bcb6ebcbe4df281238522c1e1eb631e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.8.0/stk_darwin_arm64"
      sha256 "15b664a795c1e8666bbd1604d66dc476ef021600ac77a883e3aabe949ad4b7ec"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.8.0/stk_linux_amd64"
      sha256 "e25b5a0a3e7f750b805698d2846f23bc471be80292e6c3bfc971f8d4460dd1ce"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.8.0/stk_linux_arm64"
      sha256 "91a8c0ff9afae4d30fd650e695aea26fa1a6221d3eb5b1b97b838a725588ed59"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
