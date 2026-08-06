class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7/stk_darwin_amd64"
      sha256 "488a1c309cdbe90f2b40215baff8560faeda94802e2dcaae663e926267ff12bf"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7/stk_darwin_arm64"
      sha256 "f26fa4efd8c2798b2d8e6b57cc5c1668c26df2af7cd6d5f20b4039d9b505dc5a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7/stk_linux_amd64"
      sha256 "ca08a295f62e0493fb5e6524f982de6d19b4f59dc51289035b56c1d5f554b7ba"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7/stk_linux_arm64"
      sha256 "583c68d5a53b5cf35fd833032b0be4a6d0de355941171342c58e460334a8042d"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
