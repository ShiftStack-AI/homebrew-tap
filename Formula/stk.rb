class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.30.0/stk_darwin_amd64"
      sha256 "87a2468372927ee7449b50d9d4396ff0a1c76275295584a5d85f87e4f56aef85"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.30.0/stk_darwin_arm64"
      sha256 "cb6353b20db1643b5aa3faf7e6676b4356891049073d35550677fafb7374cf08"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.30.0/stk_linux_amd64"
      sha256 "52edb44e8247ca097c95eb79dee077d1f7abb5ba73abd1ceda82e161e3d3fff1"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.30.0/stk_linux_arm64"
      sha256 "bda3c560803e44e3808245d1570d2ea2a39641d20f224211c9d1acf694289a66"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
