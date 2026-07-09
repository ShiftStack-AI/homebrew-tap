class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.9.0/stk_darwin_amd64"
      sha256 "e6ad48dccfd1dc745a21e08cd0b229a5fc8a657099f899c9d7589c47d8f88b11"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.9.0/stk_darwin_arm64"
      sha256 "cf4bf13a0f5fbe9332c2278f477d4d0ed396e10e3ce91fa253ab2ffd1fcc940d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.9.0/stk_linux_amd64"
      sha256 "d76362cf720797780b0fd1f3885cfd18f457c04162978b45d356372ff9cf16d0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.9.0/stk_linux_arm64"
      sha256 "1c50d9b049fa93001dfae0dfae773901d97de24413f706359809a20e03d5c437"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
