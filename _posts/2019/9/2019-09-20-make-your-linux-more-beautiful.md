---
layout: post
title: "Make Your Linux More Beautiful!"
date: 2019-09-20 12:00:00 +0700
categories: [Linux]
tags: [Ubuntu, OS]
author: Cloudy
---

Tested in Ubuntu 18.04 LTS

---

Tools needed?
- Terminal
- Text Editor (Nano, Vim, Gedit, etc)
- Gnome Tweak Tools

---

## What should we do?
- ### Starting with simple things like change wallpaper or lockscreen?
    - How?
        1. Easiest way to do this press ___⊞ Windows Button___.

        2. Type ___Background___ and ___Enter___. You will get this window.

            ![ChangeBGPictures](/assets/images/2019/9/20/mylmb1.png)

        3. Then you just need click ___Background___ or ___Lock Screen___ and change with picture you want.

        4. And done.

---

- ### Change login screen image?
    - How?
        1. Prepare your images that will change the default image on ubuntu.

        2. Edit ___gdm3.css___.
            ```sh
            $ sudo nano /usr/share/gnome-shell/theme/gdm3.css
            ```
            And change this part.
            ```css
            #lockDialogGroup {
                background: #2c001e url(resource:///org/gnome/shell/theme/noise-texture.png);
                background-repeat: repeat; }
            ```
            With this config.
            ```css
            #lockDialogGroup {
                background: url(file:///path/of/your/images.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center; }
            ```
        3. Restart your device and get the result. This is the example.

            ![ExampleResult](/assets/images/2019/9/20/mylmb2.png)


---

- ### Layouting and use theme?
    - How?
        1. For layouting, i just move __dock__ to the bottom, change the __icon size__ to 26 and move __Show Applications Button__ to the right. This is the example.

            ![ExampleDesktop](/assets/images/2019/9/20/mylmb4.png)

        2. If you want like that image above, first open settings and change like this.

            ![SettingsDock](/assets/images/2019/9/20/mylmb5.png)

        3. Then run this command to change __Show Applications Button__ position on your terminal.
            ```sh
            $ gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
            ```

        4. Done for layouting.

        5. Next part is using themes, in this part im using Numix Theme. So lets install this stuff.
            ```sh
            $ sudo add-apt-repository ppa:numix/ppa
            $ sudo apt update
            $ sudo apt install numix-gtk-theme numix-icon-theme-circle numix-icon-theme-square
            ```

        6. And easiest way to change theme is using ___Gnome Tweak Tools___. So lets install this stuff.
            ```sh
            $ sudo apt install gnome-tweak-tool
            ```
        7. Run `$ gnome-tweaks` from terminal or press ___⊞ Windows Button___ and type ___Tweaks___ and ___Enter___. You will get this window.

            ![TweaksTools](/assets/images/2019/9/20/mylmb3.png)

        8. Change themes that you have installed before.

        9. Done.
