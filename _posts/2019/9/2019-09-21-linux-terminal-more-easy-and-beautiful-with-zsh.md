---
layout: post
title: "Linux Terminal More Easy and Beautiful With Zsh"
date: 2019-09-21 12:00:00 +0700
categories: [Linux]
tags: [Ubuntu, Terminal, Zsh]
author: Cloudy
---

Tested in Ubuntu 16.04 and 18.04 LTS

previously I did not really like when using a terminal on linux, so im trying to change [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) to [Zsh](https://en.wikipedia.org/wiki/Z_shell). In this case im using Oh My Zsh, Zsh Syntax Highlighting, Zsh Autosuggestion and Spaceship Themes.

---

Tools needed?
- Terminal
- Text Editor (Nano, Vim, Gedit, etc)
- Zsh
- Git
- Curl or Wget

---

## What should we do?
- ### Installing prerequisites before using plugins and theme.

    ```sh
    $ sudo apt -y update
    $ sudo apt install -y zsh git curl wget
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

- ### Add plugins

    1. Syntax Highlighting

        > This plugin is used for highlight the correct or true CLI on terminal, such as if you type "nano" the color of "nano" become green, otherwise when you type "nani" become red.

        Example:

        ![examplesh](/assets/images/2019/9/21/ltmeabwz1.png)

        - Download it first

            ```sh
            $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
            $ echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
            ```
        - Then enable the plugin

            ```sh
            $ source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
            ```

    2. Autosuggestion

        > This plugin is used for suggest commands that you typed before in terminal.
        
        Example:

        ![examplesh](/assets/images/2019/9/21/ltmeabwz2.png)

        - Download it first

            ```sh
            $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
            ```
        
        - Then enable the plugin inside ___~/.zshrc___ file.

            ```sh
            plugins=(zsh-autosuggestions)
            ```
        
        - Restart your terminal.

- ### Use theme

---

    1. Download the repository

        ```sh
        $ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
        ```

    2. Create symlink the theme to oh-my-zsh custom theme directory

        ```sh
        $ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
        ```

    3. Then, set the theme inside ___~/.zshrc___ file.

        ```sh
        ZSH_THEME="spaceship"
        ```

#### References
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- [https://github.com/denysdovhan/spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)
