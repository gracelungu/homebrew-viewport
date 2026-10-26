cask "viewport" do
  on_arm do
    version "0.2.2"
    sha256 "80e2819cc08189ea49c3dd4023f84d9bab95e803a291c8a7e9ef269ca69f1bd1"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.2/Viewport-mac-arm64.zip"
  end
  on_intel do
    version "0.2.2"
    sha256 "928f2b3010e624a1085fd4ae1af20d0170a459d92d4dee6ea37ec50f79a22e12"
    url "https://github.com/gracelungu/viewport-releases/releases/download/v0.2.2/Viewport-mac-x64.zip"
  end
  name "Viewport"
  desc "Local game studio with AI agents, Blender and Godot"
  homepage "https://openviewport.com"
  depends_on macos: :ventura
  preflight do
    odie "Viewport requires macOS 13.1 or newer" if MacOS.version < MacOSVersion.new("13.1")
  end
  app "Viewport.app"
end
