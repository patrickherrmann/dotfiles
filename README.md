Setup:
```zsh
cd ~ # Must clone into home; stow symlinks to the parent directory
git clone https://github.com/patrickherrmann/dotfiles.git
cd dotfiles
brew bundle # Install system packages (including stow used on the next line)
stow .
```
