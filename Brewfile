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
install bash-completion
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
install ffmpeg
install lynx
install node
install pigz
install python
install python3
linkapps
install ruby-install
install rename
install tree
install ncdu

# Install brew cask module
tap phinze/homebrew-cask
tap homebrew/versions
install brew-cask

# Install native apps
cask install alfred
cask install beamer
cask install caffeine
cask install google-chrome
cask install google-drive
cask install dropbox
cask install evernote
cask install onepassword
cask install skype
cask install steam
cask install subtitles
cask install vagrant
cask install virtualbox
cask install vlc
cask install utorrent

# Install native experimental apps
tap caskroom/versions
cask install google-chrome-canary
cask install iterm2-beta
cask install phpstorm-eap
cask install sublime-text3
cask install tunnelblick-beta

# Search through brew apps with Alfred
cask alfred link

# Remove outdated versions from the cellar
cleanup
