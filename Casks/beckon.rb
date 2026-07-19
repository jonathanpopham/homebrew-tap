cask "beckon" do
  version "0.1.5"
  sha256 "9a3b39688b7e593fe73fd721cc8f4d5222bde1d012bff13673ba4978ae48bc31"

  url "https://github.com/jonathanpopham/beckon/releases/download/v#{version}/Beckon-v#{version}.zip"
  name "Beckon"
  desc "Keyboard launcher for macOS with zero dependencies"
  homepage "https://github.com/jonathanpopham/beckon"

  app "Beckon.app"

  # The build is ad-hoc signed, not notarized, so Gatekeeper would block
  # the first open. Strip the quarantine attribute on install; the source
  # is public if you would rather build and sign it yourself.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Beckon.app"],
                   sudo: false
  end

  caveats <<~EOS
    Beckon is ad-hoc signed, not notarized. This cask clears the
    quarantine flag for you. Source: #{homepage}
  EOS
end
