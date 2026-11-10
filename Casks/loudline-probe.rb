cask "loudline-probe" do
  version "0.1.4"
  sha256 "d470de3c76062d1fbf155cd87eb74b2f6276eeaee126b29b76879d6053532c93"

  url "https://github.com/nostoi-labs/livecli/releases/download/v0.2.0/LoudlineProbe-#{version}.pkg"
  name "Loudline Probe"
  desc "Loudness and spectrum probe plugin (VST3) for LiveCLI, Loudline engine"
  homepage "https://fwradar.com/loudline/"

  depends_on arch: :arm64

  pkg "LoudlineProbe-#{version}.pkg"

  uninstall pkgutil: "com.nostoi.loudline-probe",
            delete:  "/Library/Audio/Plug-Ins/VST3/LoudlineProbe.vst3"

  caveats "Freeware (see LICENSE.txt in the release). Install with Live closed, then in Live: Settings > Plug-ins > Rescan."
end
