class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.31.0/stk_darwin_amd64"
      sha256 "e45ee29c04fa2cc46aef17371a85e1961b3d4cd5e74ae5264b4533326a43a7f5"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.31.0/stk_darwin_arm64"
      sha256 "15ae9e93d37a6e95f55a676a71064af31c4e40f24acaebc3476befaa1cc91c8a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.31.0/stk_linux_amd64"
      sha256 "26e26340bc9e4a373f67e07acf474cd554c8c56a14a0dded407500ee809b51c9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.31.0/stk_linux_arm64"
      sha256 "7556a70170f8a72f6ad45bdadc923788cfe5fe7668dad9638021b6494eaf49c4"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
