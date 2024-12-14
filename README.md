# dotfiles-and-scripts

## Windows

### NeoVim

```sh
# 管理者権限でコマンドプロンプトを開いて以下を実行する
mklink /d %USERPROFILE%\AppData\Local\nvim %USERPROFILE%\ghq\github.com\compQx7\dotfiles-and-scripts\vim\nvim\
```

### PowerShell

```sh
# 管理者権限でコマンドプロンプトを開いて以下を実行する
mklink /d %USERPROFILE%\Documents\WindowsPowerShell %USERPROFILE%\ghq\github.com\compQx7\dotfiles-and-scripts\windows\WindowsPowerShell
```

## Linux

### NeoVim

Update & Install basics

```sh
# e.g. ubuntu
sudo apt update && sudo apt upgrade -y
sudo apt install -y build-essential curl git
```

Install Homebrew
下記を実行後に Next Step にしたがって PATH を通す

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install tools

```sh
brew install neovim asdf ripgrep fd ghq peco lazygit
```

Clone dotfiles

```sh
ghq get {compQx7/dotfiles-and-scripts}
sudo ln -s ~/ghq/github.com/compQx7/dotfiles-and-scripts/vim/nvim ~/.config/nvim
sudo ln -s ~/ghq/github.com/compQx7/dotfiles-and-scripts/linux/.bashrc ~/.bashrc
```

