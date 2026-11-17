class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.7.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "6ad0a2465d03c7475a50dcee2a4d9c4be603e9f818249290e25d8a22902d0c19"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.7.0/otel-tui-darwin-x64.tar.gz"
      sha256 "49fa6432f3866abb184b207dfe977f26d5acf6070b3cdbf35c612c05e5a5dd1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.7.0/otel-tui-linux-arm64.tar.gz"
      sha256 "f138d793db8d78d6749f9343c3f8da5b03f04d629d3cabc3072591845e2857a8"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.7.0/otel-tui-linux-x64.tar.gz"
      sha256 "bd7aef68cc845a4d485fe7e8a748ea9f9c2ca6b9e662cc1c942f743a12d2401c"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
