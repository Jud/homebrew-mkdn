cask "mkdn" do
  version "0.2.0"
  sha256 "a4dae59c8949cc871f046dae7bdc9cf17a4eebafc9ee5fc35cc7479750b92712"

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
