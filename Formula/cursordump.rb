class Cursordump < Formula
  desc "Explore Cursor agent sessions, export SFT/CPT datasets, full backups"
  homepage "https://github.com/lpalbou/CursorDump"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.10.0/cursordump-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd79532d758e0f92c6bc8408928df789b46aa4c25c3d37367094ecef3811c46c"
    end
    on_intel do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.10.0/cursordump-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "958d8d382aac08fc03a68978a2b403f7cc07601a88c07071565b280be3187ea7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.10.0/cursordump-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30fcd63925c7e70a79291312c3786ead15657b102ad8a0cefab17030546b3948"
    end
    on_intel do
      url "https://github.com/lpalbou/CursorDump/releases/download/v0.10.0/cursordump-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a95e212aa62eb1b1c633ab744475478e88350df7a16627a2e7d2c0b4573e1ee4"
    end
  end

  def install
    bin.install "cursordump"
  end

  test do
    assert_match "CursorDump", shell_output("#{bin}/cursordump --help")
  end
end
