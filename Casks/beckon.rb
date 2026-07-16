cask "beckon" do
  version "0.1.0"
  sha256 "7662c79bd711d1a8e7d939d440768aea1d5713d440e496342863104ae211ef86"

  url "https://github.com/jonathanpopham/beckon/releases/download/v#{version}/Beckon-v#{version}.zip"
  name "Beckon"
  desc "Keyboard launcher for macOS with zero dependencies"
  homepage "https://github.com/jonathanpopham/beckon"

  app "Beckon.app"

  caveats <<~EOS
    This build is ad-hoc signed, not notarized. Install with
    --no-quarantine to skip the Gatekeeper prompt, or right-click
    Beckon.app and choose Open once. Source: #{homepage}
  EOS
end
