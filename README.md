# dotfiles
Dotfiles for neovim and other various programs.

To download run

```bash
curl -L https://github.com/considerate/dotfiles/archive/master.tar.gz | tar zxv --strip=1
```

Install Skin:

```bash
open ~/.base-16/terminal-app
```

Install Neovim:

```bash
brew tap neovim/neovim
brew install --HEAD neovim
```

```bash
pip install neovim
```

Install Vundle:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.nvim/bundle/Vundle.vim
```

Install Vundle Packages:

Run `nvim` then run the command `:PluginInstall`

Install YouCompleteMe:

```bash
cd ~/.nvim/bundle/YouCompleteMe
./install.sh --clang-completer
```
