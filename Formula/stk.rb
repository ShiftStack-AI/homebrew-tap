class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.7.0/stk_darwin_amd64"
      sha256 "673f231a68a31b5d74f458fdde6b115d29df4ee11fc882b89a6897625742d447"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.7.0/stk_darwin_arm64"
      sha256 "09d3e3ac56173e67e375b678d8dba83c5919541346aa62afb64d1f8c436f862d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.7.0/stk_linux_amd64"
      sha256 "6063f5eb9c7dcbdb70404446ba17c00a9088af3219294cf55d9fc73a47e2af33"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.7.0/stk_linux_arm64"
      sha256 "c65963935b7ac213329f53b65ee96ba6fc017c72254526263ccf76645b38ad8b"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
