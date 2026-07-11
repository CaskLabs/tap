cask "macwebcamcontroller" do
  version "0.1.0"
  sha256 "9e67414635e6cd0de873203cd9f05b07aac334c0741da9ec3a0d1b70343aab08"

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
