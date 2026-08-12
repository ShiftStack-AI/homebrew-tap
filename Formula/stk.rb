class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.7-7-g6f22e8f-dirty"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7-7-g6f22e8f-dirty/stk_darwin_amd64"
      sha256 "9827524178dce155ee966d90cf1b59bf248715f76f4573cf3c18c80c7f83e4d0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7-7-g6f22e8f-dirty/stk_darwin_arm64"
      sha256 "cc4b37cb2f30d5524dfb0e0a5e60dca2c49e67fcb32c444b938c8a8705a3b610"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7-7-g6f22e8f-dirty/stk_linux_amd64"
      sha256 "14bb546406ed4f7256f6019f42790d1d9df8b93e71b9e37051dc3371c3731a72"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7-7-g6f22e8f-dirty/stk_linux_arm64"
      sha256 "5a9f856d60cad58850d44a22f02ba57d3c40596569449a63ae0d216200186412"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
