# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils

# Install latest Bash and Zsh
install bash
install zsh

# Install git
install git

# Install wget with IRI support and curl with SSL
install wget --enable-iri
install curl-ca-bundle

# Install more recent versions of some OS X tools
install vim --override-system-vi

# Install other useful binaries

tap homebrew/dupes
install homebrew/dupes/grep

tap josegonzalez/homebrew-php
install php55

install ack
install lynx
install node
install pigz
install python
install python3
install ruby-install
install rename
install tree

# Install brew cask module
tap phinze/homebrew-cask
install brew-cask

# Install native apps
cask install alfred
cask install beamer
cask install caffeine
cask install chrome
cask install dropbox
cask install iterm2
cask install skype
cask install steam
cask install sublime
cask install tunnelblick
cask install vagrant
cask install virtualbox
cask install vlc
cask install utorrent

# Remove outdated versions from the cellar
cleanup