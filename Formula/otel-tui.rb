class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.3/otel-tui-darwin-arm64.tar.gz"
      sha256 "4feeaa6aabd0efc20136a05baf94019823625e068214050c71ac56e5f84e929b"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.3/otel-tui-darwin-x64.tar.gz"
      sha256 "44e893b7ab051e312601cca3fa553b9e76c52b72d545471796a5568a7d842a2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.3/otel-tui-linux-arm64.tar.gz"
      sha256 "9b569d10666b9a63874e4017f3a9388913cc22c114c46ffb323ad6ff6887fed1"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.3/otel-tui-linux-x64.tar.gz"
      sha256 "9d6d8a83188b3898870a5a7cff666a40364e6cb51231b2f37efcf493f419edb6"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
