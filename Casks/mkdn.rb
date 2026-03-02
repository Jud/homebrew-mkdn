cask "mkdn" do
  version "0.1.2"
  sha256 "f7c6c99f67905cef8dbc5d97340278e262b37eed627380de545269480acfc094"

  url "https://github.com/jud/mkdn/releases/download/v#{version}/mkdn-#{version}.zip"
  name "mkdn"
  desc "Mac-native Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/jud/mkdn"

  depends_on macos: ">= :sonoma"

  app "mkdn.app"
  binary "#{appdir}/mkdn.app/Contents/MacOS/mkdn"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/mkdn.app"]
  end

  zap trash: []
end
