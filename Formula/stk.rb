class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.0/stk_darwin_amd64"
      sha256 "4ddc227bd492562f3ae80dee298b3f5ce975d1414fbceb94ea6c9c7fb1efc6c8"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.0/stk_darwin_arm64"
      sha256 "1e0c7ac658eefd7457a5921decd0acb53b432df3f02a516238f6c603349dd95a"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.0/stk_linux_amd64"
      sha256 "6142a30872d7a28f4fe9d4a2be78ddc17760bd57c6af75128a4f13b5fd2673b3"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.0/stk_linux_arm64"
      sha256 "a4f15cd4614f983a55ddb8486b4135addea6b0554546b2c750ff032a14af5245"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
