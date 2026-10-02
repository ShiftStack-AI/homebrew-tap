class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.4/stk_darwin_amd64"
      sha256 "e162962606133ff8dc689ee131087cdd851855b9ca580a8af8bdc65d44e4448b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.4/stk_darwin_arm64"
      sha256 "118d591dbf6730f5ea0015e7ecfff9638ffa3352c22ebc69c2ee03b907a34d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.4/stk_linux_amd64"
      sha256 "37a307effb9d8fc4585ddaddee31c25a76578e6b8092a370eaecb2ac8e27e58b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.4/stk_linux_arm64"
      sha256 "5df0ae77634a2ba8e74240406cd6817ec26130f46806c01a819bac9c28a0f1d7"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
