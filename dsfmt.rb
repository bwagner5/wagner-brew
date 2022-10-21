# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dsfmt < Formula
  desc "diskstats formatter for humans"
  homepage "https://github.com/bwagner5/dsfmt"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bwagner5/dsfmt/releases/download/v0.0.3/dsfmt_0.0.3_Darwin_arm64.tar.gz"
      sha256 "db43256dd599a8613e0cd430e3a900db2d323fc0e08b5d5f5ebd297092048b2e"

      def install
        bin.install "dsfmt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/dsfmt/releases/download/v0.0.3/dsfmt_0.0.3_Darwin_amd64.tar.gz"
      sha256 "7fb2d23e067b2050d53c3dc6b2febbbead79dbf260d9fbaab71a80c633f555d9"

      def install
        bin.install "dsfmt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bwagner5/dsfmt/releases/download/v0.0.3/dsfmt_0.0.3_Linux_arm64.tar.gz"
      sha256 "5ceea6af12ed88f11b19711867cd88e23158cd71104ba312016c16a06cc4d9db"

      def install
        bin.install "dsfmt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bwagner5/dsfmt/releases/download/v0.0.3/dsfmt_0.0.3_Linux_amd64.tar.gz"
      sha256 "3fee49447abc3a38b8a8fbf939af4b69b383fe3a4b4161574c0ec105f6e70d0e"

      def install
        bin.install "dsfmt"
      end
    end
  end

  def caveats
    <<~EOS
      cat /proc/diskstats | dsfmt
    EOS
  end

  test do
    system "#{bin}/dsfmt --help"
  end
end
