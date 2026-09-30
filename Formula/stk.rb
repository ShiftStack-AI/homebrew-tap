class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.2/stk_darwin_amd64"
      sha256 "758c8d50d5ae6244dda839eb4194590d8e030e4bff93e6d98e2c9753203a951e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.2/stk_darwin_arm64"
      sha256 "a820113f65c93155b7581981154d461cee25d8d46233648112aa4063471e8b35"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.2/stk_linux_amd64"
      sha256 "5e47fdff08753eaf67746597cad2b903247891d532509cb2960fb318f6cd5442"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.2/stk_linux_arm64"
      sha256 "d7f023c563c1f547e6efc5c34ad6933e9adb8e48d9e77310952f61130f6b0d37"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
