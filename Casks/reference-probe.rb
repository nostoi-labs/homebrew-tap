cask "reference-probe" do
  version "0.1.4"
  sha256 "6139e5674a9184ca55318d246877b383c7ddb01916a4481ea894409e27eb0d3a"

  url "https://github.com/nostoi-labs/livecli/releases/download/v0.2.0/ReferenceProbe-#{version}.pkg"
  name "Reference Probe"
  desc "Open-source measurement probe plugin (VST3) for LiveCLI"
  homepage "https://github.com/nostoi-labs/livecli"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  pkg "ReferenceProbe-#{version}.pkg"

  uninstall pkgutil: "org.livecli.reference-probe",
            delete:  "/Library/Audio/Plug-Ins/VST3/ReferenceProbe.vst3"

  caveats "Install with Live closed, then in Live: Settings > Plug-ins > Rescan."
end
