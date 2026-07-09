class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.6.0/stk_darwin_amd64"
      sha256 "fc72b5f15d4f3f56bc536791e0ebd845354bec65432a10cfddff4ea0e2676bd4"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.6.0/stk_darwin_arm64"
      sha256 "ad6c031f2481497776790026539fdfed1e468c87f18a78e8e44c1e456bdbd7c9"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.6.0/stk_linux_amd64"
      sha256 "0eb16fcd1d37c2b24ac2d0f8e4408c58299a40c19b75ec27af04785c72051f1a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.6.0/stk_linux_arm64"
      sha256 "36bb3363339f5f0e28788868d1577f1c7beea71f372088cf37c791f12d6a0e40"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
