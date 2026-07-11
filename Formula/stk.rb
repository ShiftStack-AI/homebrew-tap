class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.28.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.4/stk_darwin_amd64"
      sha256 "0cb5cf00dae7e4fe8f2dd3d211778ae85b22e81b1ebe5afd9dfa70c72e0fb77d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.4/stk_darwin_arm64"
      sha256 "aadeb57cd205e33571c94066b63fb04350f9d7b96df58064aa7f6c33b44f6c91"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.4/stk_linux_amd64"
      sha256 "fa0466db2cbf789fa2ac67191f5d40f4a2b46e49bd54d4e349d6dfa5d4996fb8"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.4/stk_linux_arm64"
      sha256 "116ed14c8e496b4172cecf0c15af453fed8c89f8ad71e69293651b514e4ec680"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
