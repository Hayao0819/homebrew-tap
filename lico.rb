# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lico < Formula
  desc "CLI tool for managing dotfiles"
  homepage "https://github.com/Hayao0819/lico"
  version "0.5.2"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Hayao0819/lico/releases/download/v0.5.2/lico_Darwin_x86_64.tar.gz"
      sha256 "c5df6e37705a40aa8bfa6b49194f88c5740143d99a2570c97ab1d82a6ca34f04"

      def install
        bin.install "lico"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Hayao0819/lico/releases/download/v0.5.2/lico_Darwin_arm64.tar.gz"
      sha256 "1008a154b2bd38210a5c00eba28c21be00eaf9b5de03190a6de0cf94e0203e92"

      def install
        bin.install "lico"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Hayao0819/lico/releases/download/v0.5.2/lico_Linux_x86_64.tar.gz"
      sha256 "28280bdbbf566367e70bd344243386c17707c43e77a88b3b97364bd90cbf612a"

      def install
        bin.install "lico"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Hayao0819/lico/releases/download/v0.5.2/lico_Linux_arm64.tar.gz"
      sha256 "051782a269b3fb663dcdd80b3493b70b1ee3373be5c872365fc8223bea468c79"

      def install
        bin.install "lico"
      end
    end
  end

  test do
    system "#{bin}/lico help"
  end
end
