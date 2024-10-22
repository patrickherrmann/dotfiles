Some prerequisites:
```zsh
brew install stow tmux neovim fzf fd eza bat starship zsh-syntax-highlighting prettierd stylua node ripgrep
brew install --cask --no-quarantine alacritty font-inconsolata-nerd-font
```

Symlink these dotfiles:
```zsh
cd ~
git clone https://github.com/patrickherrmann/dotfiles.git
cd dotfiles
stow .
```
