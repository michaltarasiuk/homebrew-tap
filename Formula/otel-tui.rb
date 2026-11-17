class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.6.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "3b7b13c6d891ef3168d305464bf30bd8cbe84555b2f3fa411ff367f0e255943f"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.6.0/otel-tui-darwin-x64.tar.gz"
      sha256 "6cd9dcbf4c23623990342a6818ae284e94e4ecd9a1afeffb6bab18dc07b99981"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.6.0/otel-tui-linux-arm64.tar.gz"
      sha256 "91ebe7ebdd027860b8d31f5e2e5c736f4de4c3c04b2b3c63c31a953b339b14da"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.6.0/otel-tui-linux-x64.tar.gz"
      sha256 "36e301e17293ee1679136040b2bd8363c8eabfdf6e32aa16e6f8cf49118e6078"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
