---
layout: post
title: "Why I Love Zsh So Much"
date: 2019-11-14 01:00:00 +0700
categories: [Shell]
tags: [Shell, Zsh, Terminal]
author: Cloudy
---

---

## What can we do in Zsh?

---

- ### Using Themes
    
    When you already installed zsh (oh my zsh) you will get file named zshrc on your home directory, you can change the theme by edit this line on zshrc files.
    ```
    ...
    ...
    ZSH_THEME="themename"
    ...
    ...
    ```

---

- ### Color Indicator
  
  Look at the ___right arrow icon___, when you type correct command and success there will be green and when incorrect will be red.

  ![](/assets/images/2019/10/14/wilzsm1.png)

---

- ### Fast Change Directory
  
  You would skip the ___cd command___ when change directory, look at this pictures.

  ![](/assets/images/2019/10/14/wilzsm2.png)

  How it possible? So, try type `$ alias` on your terminal and you will see the reason.

---

- ### Shorthand Directory

  if you know the first letter of a word, you can do like this.

  ```sh
  $ ls ~/d/g/d<tab>
  ```

  When the __tab__ button is pressed, it would print like this.

  ```sh
  $ ls ~/Documents/git-repo/dados-sae
  ```

  > Notes: you can use this feature for other CLI.

---

- ### Easy History

  Try type this on your terminal.

  ```sh
  $ cd<UP>
  ```

  Press __UP__ button and you can get history of command started with `cd`.

  ```
  $ cd Documents/git-repo/dados-sae/
  ```
  
  You can change cd with everything command that you want, Amazing!

---

- ### Tab Completion
  
  Everything that i have explained to you before partially using __Tab Completion__, but you can do more like this.

  - When you press tab 2 times, you can move through the listed items.
  
    ![](/assets/images/2019/10/14/wilzsm3.png)

  - Kill process with tab
  
    ![](/assets/images/2019/10/14/wilzsm4.png)

  - List all available parameters for command
  
    ![](/assets/images/2019/10/14/wilzsm5.png)

  - Expand environment variables
  
    Try to type this.
    ```sh
    $ $HOME<tab>
    ```
    And you will get your __home__ directory.

  - Fix your type even lowercase or uppercase
  
    Try to type this.
    ```sh
    $ cd docu<tab>
    ```
    and you will get `$ cd Documents`.

---

- ### Using Plugins
  
  My favourite plugins on zsh is:

  - **Auto-Suggestion**
    
    When using this plugin, you will see the next word suggestion with grey color (default). This is come from your past command. Look at this picture.

    ![](/assets/images/2019/10/14/wilzsm6.png)

  - **Syntax Highlighting**
    
    With this plugin you will able to see color to your command, even if the command is true or correct it will change the command to green, or red when it false or incorrect. Look at this picture.

    ![](/assets/images/2019/10/14/wilzsm7.png)

  - **Git**
    
    If you are not familiar with git, you can check on this [website](https://medium.com/quick-code/top-tutorials-to-learn-git-for-beginners-622289ffdfe5).

    Try type `$ alias | grep git` on your terminal. And you will see why i love it.

  Thats my favourite plugins, but there are still many other plugins that you can use.

---

- ### Globbing?
  
  I am not expert using this things, but if you want an example, you can going to this [website](https://code.joejag.com/2014/why-zsh.html).

---

#### References
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- [https://github.com/romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [https://code.joejag.com/2014/why-zsh.html](https://code.joejag.com/2014/why-zsh.html)
- [https://github.com/hmml/awesome-zsh](https://github.com/hmml/awesome-zsh)