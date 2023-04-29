# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quant < Formula
  desc "an SI numeric conversion and display tool"
  homepage "https://github.com/bwagner5/quant"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.5/quant_0.0.5_darwin_arm64.tar.gz"
      sha256 "cfe9f24dae81fd1951f59e6b3b86c378e7dad6adc970b120814f8271c7b6c1d6"

      def install
        bin.install "quant"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.5/quant_0.0.5_darwin_amd64.tar.gz"
      sha256 "00dbcf05c822418030003ac226e942b6b330832b2db26277d97c1c322af195da"

      def install
        bin.install "quant"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.5/quant_0.0.5_linux_amd64.tar.gz"
      sha256 "1ffe4c5f7debe8dea6e347a4c03c918185e3955a407b71e54120b909321fef44"

      def install
        bin.install "quant"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bwagner5/quant/releases/download/v0.0.5/quant_0.0.5_linux_arm64.tar.gz"
      sha256 "b4a2d04b83fc7c604b2a7cb5dc3851fc3eb1c73c4244a74f6bfe85c7c9bff287"

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
