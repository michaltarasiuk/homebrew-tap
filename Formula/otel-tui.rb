class OtelTui < Formula
  desc "Terminal app for viewing OpenTelemetry traces, metrics, and logs"
  homepage "https://github.com/michaltarasiuk/otel-tui"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.2/otel-tui-darwin-arm64.tar.gz"
      sha256 "e96667746ad0084fc933e551aee50695e103cfa54a8fc8f767bf6dff07d3aebc"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.2/otel-tui-darwin-x64.tar.gz"
      sha256 "71a24fb98e08b3407e242e505ae0eef209fbaeabf9f18d9e9499b449c41adb70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.2/otel-tui-linux-arm64.tar.gz"
      sha256 "723b11d4ced40b78080e8d82fc8e61251351cc292f419de87109a67afd7fbb28"
    end
    on_intel do
      url "https://github.com/michaltarasiuk/otel-tui/releases/download/v0.5.2/otel-tui-linux-x64.tar.gz"
      sha256 "daf0cbb96793a83b7024ecba73f70962b55ce54f172fc2ae9444baf31b2351f9"
    end
  end

  def install
    bin.install "otel-tui"
  end

  test do
    assert_predicate bin/"otel-tui", :executable?
  end
end
