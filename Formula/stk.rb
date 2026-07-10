class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.1/stk_darwin_amd64"
      sha256 "c14ccbda529b0213acc9f5423a6f2d0e6e7d660aa4623bdc4ffb1297d5568428"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.1/stk_darwin_arm64"
      sha256 "6e762838c91bb707ec7a1a160d1ba7c1ae5944dbfcd2ed89c0e0b45d3eb8cf53"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.1/stk_linux_amd64"
      sha256 "ca78dc0060acc8fe438d8a43a4db2bec52c45f7203a73a1629b7edc45fbff1c6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.1/stk_linux_arm64"
      sha256 "4da9846a6aadbe3c510ab93dd4e076f16fb5f66a83cb0b566de756cc650a58ef"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
