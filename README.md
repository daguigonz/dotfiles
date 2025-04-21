# dotfiles

Development programs configuration (iterm2, nvim, zellij) and custom UI (sketchybar, yabai), terminal IDE (iterm2, kitty), and others.
Don't use my configurations blindly unless you know what they entail! Use them at your own risk!

![dotfiles screenshot](./images/screenshot-1.png)


## Contents

- vim (Neovim) config
- zellij config
- git config
- zsh config
- starship config

### Requirements

- Neovim >= **0.9.0** 
- Git >= **2.19.0** (for partial clones support)
- [LazyVim](https://www.lazyvim.org/)
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) **_(optional)_**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and *undercurl*:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)

![dotfiles screenshot](./images/screenshot-2.png)

## Shell setup (macOS & Linux)

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use. I use [PlemolJP](https://github.com/yuru7/PlemolJP) and BlexMono.
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering

## About me

- [@daguigonz](https://x.com/daguigonz)
- [Newsletters](https://aguirredaniels.com/)
