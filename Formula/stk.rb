class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.42.0/stk_darwin_amd64"
      sha256 "03300e0f1d7d774d9bda7c5a5229d7459372dc60686c7eb3218c61a7b4517f11"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.42.0/stk_darwin_arm64"
      sha256 "be7d03cebef549e6dcd47f77cd95ce2e5647f864d1afbf957b2bc4ebd6fe936c"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.42.0/stk_linux_amd64"
      sha256 "6065f540c68e31ceea8ea682f583b0946c564ffd65a5ff744ddbbe567dc2e21d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.42.0/stk_linux_arm64"
      sha256 "5ae84cfaa4f440dd78257fad26017f59adf43bc01476292897514c3c8093ed8a"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
