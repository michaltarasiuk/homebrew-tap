class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.1/otel-tui-darwin-arm64.tar.gz"
      sha256 "6ddebd625947e2860f44b51117876cef65c1df79513912327b71c98b9e8bdc15"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.1/otel-tui-darwin-x64.tar.gz"
      sha256 "170801e1f2db96e7c6def7184afefc43c84ee9030f79e8b275c340af1234a9a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.1/otel-tui-linux-arm64.tar.gz"
      sha256 "db4df8b0ed64fc33c623318882dab35a164ce002515deeeab385bff083c2c92d"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.1/otel-tui-linux-x64.tar.gz"
      sha256 "88dcdab64583d006f9e8703ce60e30a5875780bc1e1e3df7baf28edbb6acdb0d"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
