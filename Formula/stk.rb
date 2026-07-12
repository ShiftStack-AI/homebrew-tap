class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.41.0/stk_darwin_amd64"
      sha256 "1a826fcd2a69c27870df3dbde8d196552a85170d145ba005f00133052ba13e6f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.41.0/stk_darwin_arm64"
      sha256 "8ba8a50d825cc22e60556e0e0e4c649f30192f6ab9ec9d11a2546cfc8656bae0"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.41.0/stk_linux_amd64"
      sha256 "efce6db6e5b96084750a8aac570047748c42b914d6876a3719e43f4f6f363c51"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.41.0/stk_linux_arm64"
      sha256 "9ad05e488d59b3fdc856a08ebbd6ded6371fc248eab8c67fb579a7bef13cfebc"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
