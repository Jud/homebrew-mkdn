cask "mkdn" do
  version "0.1.7"
  sha256 "7483938d7a483a62723e3c0a6735b5002a0cfc1bd1b73190f2a3436aed68450e"

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
