class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.36.0/stk_darwin_amd64"
      sha256 "0154cabe12e92f0dd88c6a5b0099481d94755b00f3b4a77e88502068fecf6d8a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.36.0/stk_darwin_arm64"
      sha256 "ab300f36363aebdf48a6adbb2b244c258a95aef72de673016ddff1de03c95ed4"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.36.0/stk_linux_amd64"
      sha256 "9d8fe017eef379028a3586a3dac1481e6a48842e756d15a7d960c5fe713b2bc5"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.36.0/stk_linux_arm64"
      sha256 "73788694bcdf781a87f6e16e2b49d15dcb0311d66fe56ff5e99ebae18e8c8310"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
