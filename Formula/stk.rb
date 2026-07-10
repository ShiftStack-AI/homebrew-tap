class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.25.0/stk_darwin_amd64"
      sha256 "f3dbd81af06d8e00d6874f2dc99963221dc7fb8f4d58a40f592cb896874922f7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.25.0/stk_darwin_arm64"
      sha256 "429a5197144e469dc81a57cf4cffc53de26e23a202325a6756e52057b77bbbc1"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.25.0/stk_linux_amd64"
      sha256 "38d028a107b95a8d160aa24d17c152c1ff6f0300e3ea0230b6ef529b00911a2a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.25.0/stk_linux_arm64"
      sha256 "11d4815b6c1e8c06fa5b3cd573ee61cdebd1dc4a67a477d8095396228f9eca72"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
