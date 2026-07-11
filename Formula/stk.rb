class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.29.0/stk_darwin_amd64"
      sha256 "68a0c7c95f97e13c9ca42534be5b85592ef27aa0ba506984ca63b3352300c430"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.29.0/stk_darwin_arm64"
      sha256 "2bbee3abb7da0a477f82529e0c2ec3fdc3c47b0a146630afc25779c225706cde"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.29.0/stk_linux_amd64"
      sha256 "99715d3055a1252a898dbe6c127d6014b6ee593bec7c769f155397f566625db0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.29.0/stk_linux_arm64"
      sha256 "cd3dca0f5030e34016c116450fc10a9225bbd581b389d0fbdd9dd5cac6dd52d5"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
