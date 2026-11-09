class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.3.0/otel-tui-darwin-arm64.tar.gz"
      sha256 "c3049587033a1506151a383eaa38e005c1ec4a6bf1b04ee0506f579818a581d2"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.3.0/otel-tui-darwin-x64.tar.gz"
      sha256 "ef88bfaa76a0d9a8fc1320eed59733a73bda5d2d0924a468e05d97ea4d533014"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.3.0/otel-tui-linux-arm64.tar.gz"
      sha256 "e0be8273c60c914bfdcff8f745505f35b58eeda88caff10c0fd850233c447f6a"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.3.0/otel-tui-linux-x64.tar.gz"
      sha256 "d31eba25acb75bdb067b04517b217d47a04a4d427fe3a02c88ced50d7bcfe593"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
