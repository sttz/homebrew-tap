# sttz Homebrew Tap

[Homebrew](https://brew.sh) tap for various projects.

## Contents

* **install-unity** (https://github.com/sttz/install-unity)<br>
  *Script to install Unity 3D versions from the command line on macOS*

  install-unity can be installed both as a formula or cask. The formula depends on mono and will compile install-unity from source, the cask downloads a binary pre-built using CoreRT.

  Get the cask if you don't already have mono installed via Homebrew, since it's quite a hefty dependency (>400MB). If you already have mono, then the formula is smaller than the cask (<2MB instead of >60MB).

  ```sh
  brew cask install sttz/tap/install-unity
  ```

  ```sh
  brew install sttz/tap/install-unity
  ```
