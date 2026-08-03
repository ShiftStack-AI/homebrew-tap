class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.44.0/stk_darwin_amd64"
      sha256 "b41acc4f2457838c39de8110542340e1d6adf7cae3559cbec37bf479ccc8445a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.44.0/stk_darwin_arm64"
      sha256 "99dbf59c23edc87c710f69ef2fdf6aa6c5c4019ffb035307277e6c906eb027e2"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.44.0/stk_linux_amd64"
      sha256 "30931c827615796e7aea34f4fc5f7b996c785e9c138463b0c9c67577be67cb54"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.44.0/stk_linux_arm64"
      sha256 "8a2ba2b592f60333ded5bc0dbde01b6beed46c1052fc73ce827991fec4ad1ef0"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
