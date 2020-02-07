---
layout: post
title: "Create Ubuntu 18.04 VM in Virtual Box Using Vagrant"
date: 2019-11-26 01:00:00 +0700
categories: [Virtual Machine]
tags: [Virtual Box, Vagrant, Mac, Ubuntu, Server]
author: Cloudy
---

---

Tools needed?
- Terminal
- Editor
- Virtualbox
- Vagrant

---

## How we do it?

- ### Install VirtualBox and Vagrant

  - VirtualBox : [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

  - Vagrant: [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)

---

- ### Check that vagrant already installed
  
  ```sh
  $ vagrant --version
  ```

---

- ### Initiate
  
  ```sh
  $ vagrant init
  ```

  > This command will generate **Vagrantfile**

---

- ### Configure the Vagrantfile
  
  ```ruby
  Vagrant.configure("2") do |config|
    # define
    config.vm.define "playground-ubuntu" do |ubuntu|
      ubuntu.vm.box = "ubuntu/bionic64" # image
      ubuntu.vm.hostname = "dadossae" # hostname

      ubuntu.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"] # fast http
        vb.customize ["modifyvm", :id, "--memory", 1024] # ram
        vb.customize ["modifyvm", :id, "--name", "playground-ubuntu18"] # name of virtualbox
      end
    end
  end
  ```

---

- ### Launch VM

  ```sh
  $ vagrant up
  ```

  > VM will up on VirtualBox

---

- ### SSH into VM

  ```sh
  $ vagrant ssh
  ```
 
  or this command
  
  ```sh
  $ vagrant ssh playground-ubuntu
  ```

---

- ### Stop the VM

  ```sh
  $ vagrant halt
  ```
 
  or this command
  
  ```sh
  $ vagrant halt playground-ubuntu
  ```

---

- ### Destroy the VM

  ```sh
  $ vagrant destroy
  ```
 
  or this command
  
  ```sh
  $ vagrant destroy playground-ubuntu
  ```

---

#### References
- [https://www.vagrantup.com/](https://www.vagrantup.com/)
- [https://www.virtualbox.org/](https://www.virtualbox.org/)