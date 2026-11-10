class Livecli < Formula
  include Language::Python::Virtualenv

  desc "Command-line for Ableton Live, built for AI agents, with measurement probes"
  homepage "https://github.com/nostoi-labs/livecli"
  url "https://files.pythonhosted.org/packages/d9/5a/8b67ed29012ca7758b09e7c6565ca764a779521a649d3455f248c58ea1f7/nostoi_livecli-0.2.0.tar.gz"
  sha256 "3602ce53dbf47b190564ce02bb910df8f933947f8efbdd5315318e64353abc2c"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Then install the Remote Script into Live's User Library:
        live setup
      and choose LiveCLI as a Control Surface in Live (Settings > Link, Tempo & MIDI).
      Optional probe plugins:
        brew install --cask nostoi-labs/tap/reference-probe
        brew install --cask nostoi-labs/tap/loudline-probe
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/live version")
  end
end
