class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.6/stk_darwin_amd64"
      sha256 "9f4bbcde8b696e3df18d22df21ce4f54b3e18f661e7c972270fc4e8e15f37960"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.6/stk_darwin_arm64"
      sha256 "2d7e8d0d9846959af7c99cebccd2a01e44d767755d65d4319e09634ec9bc377a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.6/stk_linux_amd64"
      sha256 "83f7f9bbade0d8f1d0cb441919d973a74ae790f270643a821b7fdc6311f2c970"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.6/stk_linux_arm64"
      sha256 "623a743306dafff0200e3959ed1059fe7406cdfbb4ce9f453be0884d9fa32452"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
