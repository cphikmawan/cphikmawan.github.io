---
layout: post
title: "Getting Started With MacOS"
date: 2019-11-10 12:00:00 +0700
categories: [Mac]
tags: [MacOS, OS]
author: Cloudy
---

Current: MacOS Mojave

For the first time I used a Macbook, I'm confused about what to do. So I will share something that is either useful or not to everyone.

---

## What should we do?

- ### Setting up the desktop (System Preferences)
    1. General Settings
    2. Desktop & Screen Saver
    3. Dock
    4. Display
    5. Energy Saver
    6. Keyboard
    7. Trackpad
    8. Touch ID

---

- ### Install Home-brew
    1. Enable xcode
        ```sh
        $ xcode-select --install
        ```
    2. Install Home-brew
        ```sh
        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        ```
    3. Check whether the installation was successful
        ```sh
        $ brew doctor
        ```
    4. Check it to install an application
        ```sh
        $ brew install sl
        ```
    5. Type `sl` command on terminal, and you will see something fun

---

- ### Install Application that you need
    1. iTerm2
    2. Docker
    3. VSCode
    4. Chrome
    5. Sequel Pro
    6. Android Studio
    7. Corel Draw
    8. Office 365
    9. Spectacle
    10. Display Menu
    11. Etc

#### References
- [https://docs.brew.sh/Installation](https://docs.brew.sh/Installation)