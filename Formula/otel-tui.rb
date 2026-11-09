class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.2.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "7c67e113383aa2889b5c71214333be8f8c64bfe4d4a1bcaf67caf0a72fcaf83a"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.2.0/otel-tui-darwin-x64.tar.gz"
      sha256 "c17bdbfad526ed6ce1cd2c0258d7bfac4e1f2fd9012665c02e97dd2340dc4cee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.2.0/otel-tui-linux-arm64.tar.gz"
      sha256 "e745e7f238e3001041816eaf7b189fdef66b955e67e89ace220fd4fd5ac1a860"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.2.0/otel-tui-linux-x64.tar.gz"
      sha256 "2bc7e21db901fdde595be4cf04b01550b3560011cba120d03133adf2cd3b2af9"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
