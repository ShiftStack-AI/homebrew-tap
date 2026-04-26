class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.3/stk_darwin_amd64"
      sha256 "e9cc5cf681504896a3df1aeaf27a0b844be6354dc4d10705d3d436ce5b8223e6"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.3/stk_darwin_arm64"
      sha256 "842789ccf53f05c5c792dcbeee93fb4654370242c79b730641f11dc7ce229c46"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.3/stk_linux_amd64"
      sha256 "f6932ab380bbf6fafd2be9c8091ccaad21977adb272b3b4334baf7cc7539d61a"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.1.3/stk_linux_arm64"
      sha256 "d7bda9629929e854d7be00396fb1d4f52bbf51af179111c1cb089940a3030e7c"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
