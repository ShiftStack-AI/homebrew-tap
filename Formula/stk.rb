class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.1/stk_darwin_amd64"
      sha256 "75e528ae53152efb5d4601f0bb0126f1161fcb89d2be323d82f6f381a494d50d"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.1/stk_darwin_arm64"
      sha256 "587083aef952017bcfb949f9b6b4da497b46d7975735505f76908858f1a9331c"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.1/stk_linux_amd64"
      sha256 "58bb8aa7a21dafe706c542fdcb3f1f24c73192cc3ceeed1da69424e3db4efcb6"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.1/stk_linux_arm64"
      sha256 "f01058ddfcfc4b1eab4f8f17672e68d94ee3fb9f97355eb10a84bd05fd9a37b1"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
