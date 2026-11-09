class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.4.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "0f56bc61e34e52e9aab29c568cfd0997587b57d4cb4797061d2e7375654f0a4a"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.4.0/otel-tui-darwin-x64.tar.gz"
      sha256 "794842ef08895ce9db49b76f8838085972d62ef09e0efff713327730814318a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.4.0/otel-tui-linux-arm64.tar.gz"
      sha256 "9fc1b2c2adb71751eba73307bf89a75899a1b4df1ee57736eedea90a7bb02b3b"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.4.0/otel-tui-linux-x64.tar.gz"
      sha256 "a8cb2b71f9c51ee7e12a6c3c4e557a8639a06a50f6448882d2e5f801a2cf6683"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
