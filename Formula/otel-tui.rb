class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.1.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "8d24fce8b5b2e3885b9489f195ebf05156c2486879e659c5f918dab659f59e7d"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.1.0/otel-tui-darwin-x64.tar.gz"
      sha256 "035728152bd857c1b107116fb35297019e505d7b718b438455e90213bcc130f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.1.0/otel-tui-linux-arm64.tar.gz"
      sha256 "59774a91cd94a54b68b7d71d980cd03119d4f9708c289821599f8ebcbe09f529"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.1.0/otel-tui-linux-x64.tar.gz"
      sha256 "e54818d36ae29092af34cada8b9eb71a778f350f0aa28fec2bb628e2bd507d08"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
