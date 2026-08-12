cask "macwebcamcontroller" do
  version "0.3.0"
  sha256 "44cd4ca72443ad65bbf7e55f8d4c7f51c8034b7d8c1da852b019922036a860a1"

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
