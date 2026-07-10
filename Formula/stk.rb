class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.27.0/stk_darwin_amd64"
      sha256 "b233090eb5a0c230f9dc36d0d10b42fd9c15e3a2e95722c271dd27ff36eb5856"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.27.0/stk_darwin_arm64"
      sha256 "9919450e3a479ea9b669e20949a43512199cc6d5553d149be5229c703526f28c"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.27.0/stk_linux_amd64"
      sha256 "99625b40e9c7e4133cca93e167c5abd1951563a8ae478a3685bb80412bcb59fc"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.27.0/stk_linux_arm64"
      sha256 "ae29ef30b8345eaccd4b2d587c58676c9ceee0baf259867077d2d1680f909db2"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
