class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.15/stk_darwin_amd64"
      sha256 "13c0d99733af20190be898b4e9da2fc0c8fc32c74cc573028e09dc66bf07cbeb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.15/stk_darwin_arm64"
      sha256 "3accd89c78932b6d0c1b14b1d7ef43b587bf38af2dd762ddbf4aeb87b2813c6b"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.15/stk_linux_amd64"
      sha256 "11c1fd5f0ccee578af9393bafd80a711307ec1ad56e1ba70bad74ecd492dacdf"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.15/stk_linux_arm64"
      sha256 "eef495583fef5eae1b0e737f39ad3bd9395e783f15d7756e3607fa7e6637df9d"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
