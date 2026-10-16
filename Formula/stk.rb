class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.14/stk_darwin_amd64"
      sha256 "d667cace6b913e2caa96559312ff50a04951852dbee93c1c46a94bfa86591662"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.14/stk_darwin_arm64"
      sha256 "ef2b75997f2ef1c41e246a7c2d3f5217fd8827b794e247b47ac8278444280807"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.14/stk_linux_amd64"
      sha256 "a307670db98074ade3f7f79200f393583c11c40152a62b3cd10d364449975c30"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.14/stk_linux_arm64"
      sha256 "ed50ebdc927e436c4cabdada9be24399ab2cac9fb5cec5c84a37fe89d5037586"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
