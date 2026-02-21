cask "mkdn" do
  version "0.1.0"
  sha256 "dbd4c66dc94dd949413ca143e915f5d191c21f8b924643fb4ed9efff6fffd303"

  url "https://github.com/jud/mkdn/releases/download/v#{version}/mkdn-#{version}.zip"
  name "mkdn"
  desc "Mac-native Markdown viewer with Mermaid diagram support"
  homepage "https://github.com/jud/mkdn"

  depends_on macos: ">= :sonoma"

  app "mkdn.app"
  binary "#{appdir}/mkdn.app/Contents/MacOS/mkdn"

  zap trash: []
end
