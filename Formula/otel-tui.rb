class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "d3e62204b82b08c297fb6298a2f0b8253286ce1fd466e8a1065563c4ca829bc2"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.0/otel-tui-darwin-x64.tar.gz"
      sha256 "61ba556c05ed38d0e66f10b650b661e2457774094bd3a3f55f4ccb56e40a1f58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.0/otel-tui-linux-arm64.tar.gz"
      sha256 "b1defbc2d74afd18a3c845b3148c54a5c678a10789e164140e1c76ff4c6f7691"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.0/otel-tui-linux-x64.tar.gz"
      sha256 "afe266cc9c07a83402e12133e967b4f45c34674486af509cbf8372509079bfe9"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
