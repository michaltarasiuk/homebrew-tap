class Otui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otui"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otui/releases/download/v0.8.0/otui-darwin-arm64.tar.gz"
      sha256 "73b47fd641ed7d26c5789130df2d5c4c29dca827623687632590d2386dc8ebe5"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otui/releases/download/v0.8.0/otui-darwin-x64.tar.gz"
      sha256 "a6d503ec4fcb3ec0eabe403bcb79c57f11bc92a8476f88405f9d77979ad08615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otui/releases/download/v0.8.0/otui-linux-arm64.tar.gz"
      sha256 "9098a4e1effc6293b6f6c37d4667fb9e4b9148e94f031479816650ea3c1fc83f"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otui/releases/download/v0.8.0/otui-linux-x64.tar.gz"
      sha256 "b899716bf06251e15e8905308b850c7530c6a3d680a084dff2dc19b2c59d23a3"
    end
  end

  def install
    bin.install "otui"
  end

  test do
    assert_predicate bin/"otui", :executable?
  end
end
