class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.2-1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-1/stk_darwin_amd64"
      sha256 "79d105e10d9607ec6b5e288321598b6b260ffb16a8f9f786ed9bbfc91103c61a"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-1/stk_darwin_arm64"
      sha256 "acf6a15972b088f00cbea3671c23471a6a2264af094f3fe3018062e5953fc130"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-1/stk_linux_amd64"
      sha256 "f706d1b4ead863b5fcaab65726a370d3b89355356af236c6c3d7083948f3fbd3"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.2-1/stk_linux_arm64"
      sha256 "894ee213221f16db539666b5316620cab1c46d080a11f82e7027d2ca6676e72c"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
