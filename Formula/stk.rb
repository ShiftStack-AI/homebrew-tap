class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.14.0/stk_darwin_amd64"
      sha256 "fde7dc25ecd16d9f08f9f8f6750e9a82917f5f1018b4edb5afff97e7ce49055a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.14.0/stk_darwin_arm64"
      sha256 "fd72eba30118cf06c4b6ef497c8a481e1c2a4847ef680e3e5faaa4c0ad743730"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.14.0/stk_linux_amd64"
      sha256 "369b06960e8f172f0c8ea7fefa667df94920320b7ef8b4151598c14f9c3dc785"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.14.0/stk_linux_arm64"
      sha256 "720ea14dc7e51ce3a64a9e91841e9a25a0de19bf7f6cb2710dd2185d4c64d610"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
