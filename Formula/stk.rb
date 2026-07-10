class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.20.0/stk_darwin_amd64"
      sha256 "88fb3d78e21c90710b496dbbacc8e5d994fafe2fe955bce2dfc989bb178484cf"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.20.0/stk_darwin_arm64"
      sha256 "68332c6d19df5d5cea278c8e5a695055bac3d77332fd94f00c08ce4818a61ebc"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.20.0/stk_linux_amd64"
      sha256 "2cc714855f28802a097acf2730d75c658727b4a72b3e38dc70c4e0f6b1aab194"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.20.0/stk_linux_arm64"
      sha256 "6f554895d59a4e5dbf7793db40a2a016c0c53ed1849b485ebaaaf72a2d3bf940"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
