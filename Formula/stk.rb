class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.11.0/stk_darwin_amd64"
      sha256 "7c3ed211da24de6c0005436afadc84d6338043661055f2fa1dd9657f3406d9a8"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.11.0/stk_darwin_arm64"
      sha256 "177fb0f0fe26765d3aaf44cc5c29912e24dbac40fdefc8b7c154ff5f681da3c5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.11.0/stk_linux_amd64"
      sha256 "edbf329f8a0b3bcd0261b5d19766df08ab2198b62d25dba444d4fcf3fb89b164"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.11.0/stk_linux_arm64"
      sha256 "aa3b6ea8d13352e8478ae4a5e2c34f7e0ee295e3f68f4397e44b698edec91589"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
