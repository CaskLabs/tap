cask "macwebcamcontroller" do
  version "0.2.0"
  sha256 "25d8249b51bbb81861161206cf1cfa3f9882f813844aed921f482acf7b4c9e74"

  url "https://github.com/CaskLabs/MacWebcamController/releases/download/v#{version}/MacWebcamController-#{version}.zip"
  name "MacWebcamController"
  desc "Menu bar controller for UVC webcam settings"
  homepage "https://github.com/CaskLabs/MacWebcamController"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "MacWebcamController.app"

  zap trash: [
    "~/Library/Preferences/com.macwebcamcontroller.app.plist",
    "~/Library/Saved Application State/com.macwebcamcontroller.app.savedState",
  ]
end
