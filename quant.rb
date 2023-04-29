# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quant < Formula
  desc "an SI numeric conversion and display tool"
  homepage "https://github.com/bwagner5/quant"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.4/quant_0.0.4_darwin_arm64.tar.gz"
      sha256 "af48714ad7df2a12b5487b5e1f6d9f10638b98e29e9011c86372182412e0461d"

      def install
        bin.install "quant"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.4/quant_0.0.4_darwin_amd64.tar.gz"
      sha256 "33e5b68e7c1afcbc72cea3b2cfb172deeaca4b163844591205e9dc314314d065"

      def install
        bin.install "quant"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.4/quant_0.0.4_linux_arm64.tar.gz"
      sha256 "4a99b7b7052940d47c1323eea3232aef1c750e2ada43222ac4677f7940d8b431"

      def install
        bin.install "quant"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.4/quant_0.0.4_linux_amd64.tar.gz"
      sha256 "23b6663c6728818bc88124494705fdd4905f6c78f84b457fd9d34824bb3b98bf"

      def install
        bin.install "quant"
      end
    end
  end

  def caveats
    <<~EOS
      quant 1024Ki
    EOS
  end

  test do
    system "#{bin}/quant --help"
  end
end
