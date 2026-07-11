class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.37.0/stk_darwin_amd64"
      sha256 "44663a3c1f6d4ea150ac4ded1d766f81e1f1904a8c261189d42a8b25d18ac08d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.37.0/stk_darwin_arm64"
      sha256 "45b1ad6abffbbcb045cc86e3bee427c8590562f16421bd51fda2db4d0f627d2a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.37.0/stk_linux_amd64"
      sha256 "b9a41faf0970f48da054da6522d73095dc777e31f8cc26fbae4392fd26a13bf3"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.37.0/stk_linux_arm64"
      sha256 "9d45c3945110bfce0721188934fa90602d8bc2a939c95cee5ac60020ab24baef"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
