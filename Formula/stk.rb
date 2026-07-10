class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.23.0/stk_darwin_amd64"
      sha256 "c1af04f40b33fa310548a7d6cca4a637bc384aced6510563c750320cbd955480"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.23.0/stk_darwin_arm64"
      sha256 "63b3fdd1510516b2d95fac154c2a674cefe63f7fc6649ec8b03dbe871ef1fd74"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.23.0/stk_linux_amd64"
      sha256 "bba3f5d082221c2beee9ab480e1d61a22bc43f49e1d1766a95071682cb7d0516"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.23.0/stk_linux_arm64"
      sha256 "ea23602b55d3c2956950bb7831a6a6945a9d9ba40461ed52ab029a799c4216a3"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
