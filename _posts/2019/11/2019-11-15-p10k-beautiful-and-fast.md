---
layout: post
title: "Powerlevel10k Beautiful and Fast"
date: 2019-11-15 01:00:00 +0700
categories: [Shell]
tags: [Shell, Zsh, Terminal]
author: Cloudy
---

---

## What can we do with Powerlevel10k?

![](/assets/images/2019/10/15/p10k1.png)

---

- ### Simple Icon

  Powerlevel10k or p10k recommended using Meslo Nerd Font, it will show on your terminal for several icons like macbook logo, git branch, clock, directory, virtualenv, background process and other things. See image above.

---

- ### Colorful

  From that image, we can see p10k provides colorful on your terminal.

  - Icons color
  - User Color
  - Directory Color
  - Git
  - Venv
  - Clock

---

- ### Environment
  
  Look at picture above 1 more time. In the default terminal and shell, you won't able to see the macbook logo, color indicator, directory indicator, two lines mode, git status, venv icon and clock.

---

- ### Easy Configuration
  
  Generating configuration for p10k is pretty easy, just type `$ p10k configure`. Look at this video.

  <!-- Embedded video will be here. -->

  > Notes: 
  > - for first time configure you will be promted to install __Meslo Nerd Font__.
  > - Install it for better appearance.
  > - And change your terminal font, look at [this](https://github.com/romkatv/powerlevel10k/blob/master/README.md#fonts)

---

- ### Show Username
  
  Default configuration of p10k does not show username except when your machine in SSH mode. 
  To show your username or hostname, or both maybe. You can change the context p10k configuration file named __.p10k.zsh__ that you have generated before.

  This is my personal configuration.

  From this.

  ```sh
  ##################################[ context: user@hostname ]##################################
  # Default context color.
  typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
  # Default context format: %n is username, %m is hostname.
  typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%n%f at %180F%m'

  # Context color when running with privileges.
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=178
  # Context format when running with privileges: bold user@hostname.
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%n%f at %227F%m'

  # Don't show context unless running with privileges or in SSH.
  # Tip: Remove the next line to always show context.
  typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=

  # Custom icon.
  # typeset -g POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_EXPANSION='⭐'
  # Custom prefix.
  typeset -g POWERLEVEL9K_CONTEXT_PREFIX='%fwith '
  ```

  To this.

  ```sh
  ##################################[ context: user@hostname ]##################################
  # typeset -g DEFAULT_USER="$USER"
  # Default context color.
  typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=cyan
  # Default context format: %n is username, %m is hostname.
  typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='cloudmg'

  # Context color when running with privileges.
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=green
  # Context format when running with privileges: bold user@hostname.
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%B%n@%m'

  # Don't show context unless running with privileges or in SSH.
  # Tip: Remove the next line to always show context.
  # typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=

  # Custom icon.
  # typeset -g POWERLEVEL9K_CONTEXT_VISUAL_IDENTIFIER_EXPANSION='⭐'
  # Custom prefix.
  # typeset -g POWERLEVEL9K_CONTEXT_PREFIX='%fwith '
  ```

  And you will get your username show on the terminal. If you want change the username, move the context on __POWERLEVEL9K_LEFT_PROMPT_ELEMENTS__

  ```sh
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
      # =========================[ Line #1 ]=========================
      os_icon                 # os identifier
      context                 # it will show your username
      dir                     # current directory
      vcs                     # git status
      # =========================[ Line #2 ]=========================
      newline
      prompt_char             # prompt symbol
  )
  ```

  Then comment or delete on __POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS__
  ```sh
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    .
    .
    # context           # user@hostname
    .
    .
  )
  ```

---

- ### Is this theme is fast?
  
  Yes! You can see on this video from the original repository.

  [![asciicast](https://asciinema.org/a/NHRjK3BMePw66jtRVY2livHwZ.svg)](https://asciinema.org/a/NHRjK3BMePw66jtRVY2livHwZ)

---

#### References
- [https://github.com/romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)