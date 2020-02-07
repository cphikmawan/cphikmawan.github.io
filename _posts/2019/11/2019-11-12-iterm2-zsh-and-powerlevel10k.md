---
layout: post
title: "iTerm2 combine with Zsh + Powerlevel10k Very Beautiful and Fast"
date: 2019-11-12 01:00:00 +0700
categories: [Mac, Shell]
tags: [iTerm2, Zsh, Terminal]
author: Cloudy
---

Current: MacOS Mojave

---

Tools needed?
- iTerm2
- Zsh (Oh My Zsh)
- Git
- Curl or Wget
- Powerlevel10k
- Meslo Nerd Font

---

## What should we do?

- ### Installing prerequisites

    ```sh
    $ brew install iterm2 zsh git curl wget
    ```

---


- ### Installing Oh My Zsh

    1. Via Curl

        ```sh
        $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        ```

    2. Via Wget

        ```sh
        $ sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        ```

---

- ### Get the powerful zsh theme Powerlevel10k

    ```sh
    $ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

    Then set __`ZSH_THEME=powerlevel10k/powerlevel10k`__ in your ~/.zshrc. and run this command :

    ```sh
    $ source ~/.zshrc
    ```

- ### Run `p10k configure` to settings the themes and install the fonts

- Notes: 
    > __Restart__ your terminal if the theme or plugins not changed.

---

#### References
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- [https://github.com/romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)