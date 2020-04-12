# sttz Homebrew Tap

[Homebrew](https://brew.sh) tap for various projects.

## Contents

* **expresso** (https://github.com/sttz/expresso)<br>
  *expresso is a command line interface to control the ExpressVPN app*

  The expresso cask binary is signed and notarized. Since it's not possible to staple the notarization ticket to command-line tools, an internet connection is required for macOS to verify the notarization.

  ```sh
  brew cask install sttz/tap/expresso
  ```

* **install-unity** (https://github.com/sttz/install-unity)<br>
  *Script to install Unity 3D versions from the command line on macOS*

  install-unity can be installed both as a formula or cask. The formula depends on mono and will compile install-unity from source, the cask downloads a binary pre-built using CoreRT.

  Get the cask if you don't already have mono installed via Homebrew, since it's quite a hefty dependency (>400MB). If you already have mono, then the formula is smaller than the cask (<2MB instead of >60MB).

  As of install-unity version 2.7.0, the cask binary is now signed and notarized. Since it's not possible to staple the notarization ticket to command-line tools, an internet connection is required for macOS to verify the notarization.

  ```sh
  brew cask install sttz/tap/install-unity
  ```

  ```sh
  brew install sttz/tap/install-unity
  ```
