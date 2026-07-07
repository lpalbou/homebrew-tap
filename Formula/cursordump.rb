class Cursordump < Formula
  desc "Explore Cursor agent sessions, export SFT/CPT datasets, full backups"
  homepage "https://github.com/lpalbou/CursorDump"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.9.0/cursordump-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "57c3ed199f7cb305d301435a04c9adbcd094c4458d8c0302109b00bd748c2ed6"
    end
    on_intel do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.9.0/cursordump-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "24405f737a659e16a0675e0a31fb8f32d2f90b17e74178d6c33174b803ef7581"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.9.0/cursordump-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3980690a886c08200ebf56f86df908aaa06f5fab01e4751d2452e0c6981ed581"
    end
    on_intel do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.9.0/cursordump-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3093bcecd4a3a6102493230b48d5e81a4baa94b47ec66c83c207851e67831283"
    end
  end

  def install
    bin.install "cursordump"
  end

  test do
    assert_match "CursorDump", shell_output("#{bin}/cursordump --help")
  end
end
