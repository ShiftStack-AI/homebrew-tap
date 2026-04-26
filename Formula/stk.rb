class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.1/stk_darwin_amd64"
      sha256 "008bc3aceef3df400cc94e4cfe3c99b794197fef360a6ac425d8cb9a5d57a9a7"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.1/stk_darwin_arm64"
      sha256 "a0e477098719c58f7e26d7d4384f21c611e3f60bd60bbb06a34dd6d876752ab0"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.1/stk_linux_amd64"
      sha256 "1556768d0a3e335b17600f2b7e45039f553a7bfd99b3999a7d96c3b7ec81a81a"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.1/stk_linux_arm64"
      sha256 "13528ed6b8ba73697a18a43375bcd4e6b9b7c76a5aa6159df5d2b1127d53b933"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
