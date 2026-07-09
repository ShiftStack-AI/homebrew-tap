class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.10.0/stk_darwin_amd64"
      sha256 "271a2eba3b1c01bec42b288ae374bc9782af6aba0d935bcb71f80c3329987012"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.10.0/stk_darwin_arm64"
      sha256 "1e284c7fbb6c8de107f5369cf05a67b5189d6d82da033f136e632122e22afc67"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.10.0/stk_linux_amd64"
      sha256 "8e1b642e4f59916926ec316a3de35b73d53740ae60de12e6c2e5631597604961"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.10.0/stk_linux_arm64"
      sha256 "75f6df0d1c28f0f4ed64ac9410d29b7e3331c3e95a8fb6609a58b24f42e88279"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
