class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_darwin_amd64"
      sha256 "2b0170a83ffde3f8f89dac0f4a154b18f743d1b9607c00a533aa5e411a114041"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_darwin_arm64"
      sha256 "370ca8ecd819a6f0f3b30eafb91b5da6f2a3e029709d930365b0020012b73852"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_linux_amd64"
      sha256 "07950f37d0d09ffc7a3ed2609051f575f63b7e931409c7ebc666a0716eb2ce38"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.4.0/stk_linux_arm64"
      sha256 "8b545e21680d5a909c48e7307110f38ba0a45fa23bfe700e86deff58bcbe32de"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
