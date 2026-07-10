class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.26.0/stk_darwin_amd64"
      sha256 "ba2422d506ba6299f707716763165a019cc7be4f5bdfe0092d495adba3c7fb80"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.26.0/stk_darwin_arm64"
      sha256 "d56eb3dc0703a2bf8b696c70abbf0c6207017d8db1b79e219e27427ac3ed85e1"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.26.0/stk_linux_amd64"
      sha256 "3827a2ad4ed9c1601e73ee987b3acaabc739752ffaa21ab8a0892cf380702f78"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.26.0/stk_linux_arm64"
      sha256 "268954d4fd7fef7eb0a8b68f1655013c07f6e480f743eb4e9f7f7375774f0be3"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
