cask "quick-ports" do
  version "1.0.0"
  sha256 "deb4ca4c41e2ff06a1a5b4d786f6688022165454e82b2d93f6e24edc51ec6f05"

  url "https://github.com/sahildmk/quick-ports/releases/download/v#{version}/QuickPorts-#{version}.zip"
  name "Quick Ports"
  desc "Lightweight macOS menu bar app to monitor listening ports and kill processes"
  homepage "https://github.com/sahildmk/quick-ports"

  app "QuickPorts.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/QuickPorts.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.sahildmk.QuickPorts.plist",
  ]
end
