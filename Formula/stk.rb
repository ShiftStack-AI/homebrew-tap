class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.1/stk_darwin_amd64"
      sha256 "92a3e178a6b81fefc921c56b61d45a6f7dbd61e5d0e8d8797c175123c0aba125"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.1/stk_darwin_arm64"
      sha256 "d662e8a09b024755640f202beef9649428d8af33e6c007578518b4dce5b63a3d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.1/stk_linux_amd64"
      sha256 "252bfd8194259c37eaf052515b17e8f766f035f896340e5d58c83963fb1fe48c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.1/stk_linux_arm64"
      sha256 "255aa30d46157d2aa546e6c7d0357eb21e7aca968195ceb9c9934fe093b07b4e"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
