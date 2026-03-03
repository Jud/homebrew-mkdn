cask "mkdn" do
  version "0.1.0"
  sha256 "1b189847e31cef2e4c4f0ed62ea5303a0830af51185292422961f4cc5c1f21d1"

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
