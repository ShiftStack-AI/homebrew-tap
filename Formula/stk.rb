class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4/stk_darwin_amd64"
      sha256 "874e66973bd9d3edc165575ae75a63f6274551c3dbc46fe742b331796b6ab6ab"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4/stk_darwin_arm64"
      sha256 "d77e569656179b084c765071eec3535d1747862cbde0718445e582596a408e80"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4/stk_linux_amd64"
      sha256 "76091c8ff251ca0ef50cac75466c40825d0a216e39547debfbd87d4839cecbc6"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4/stk_linux_arm64"
      sha256 "5c61ba01ac254b1fcbda77cb9150441e470679aa4763e233ce38fc90fc16d204"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
