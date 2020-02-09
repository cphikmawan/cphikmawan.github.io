---
layout: post
title: "How to Install Supervisor on Centos 6"
date: 2020-01-05 01:00:00 +0700
categories: [Linux]
tags: [Centos6, Linux, Supervisor]
author: Cloudy
---

---

Tools needed?
- Centos 6
- Terminal

---

## How we do it?

- ### Notes
  - Make sure you have centos 6
  - This way is for Centos 6
  - For Centos 7, use **yum install supervisor** for easy ways

---

- ### Prerequisites

  - epel-release
  - python-pip
  - python-setuptools
  - python-setuptools-devel

---

- ### Overview

  - What is supervisor? 
    supervisor is tools for process monitoring and controlling on linux. I mean it just like systemd, but supervisor are not built-in tools like systemd. 
  - why we use supervisor instead of systemd in centos 6? 
    because supervisor works on any distro, no need to be superuser to run process, easy manage process and group, on centos 6, there is no systemd, so why i share this tutorial because i got stuck on running process with that old OS.

---

- ### Installing Prerequisites
  
  Before we installing supervisor, we need to install dependency tools first. 
  Type this on your terminal.

  ```sh
  $ sudo yum install epel-release python-pip python-setuptoolsv python-setuptools-devel
  ```

---

- ### Installing Supervisor Using PIP

  After installation above successful, we need to install `meld3` version `0.6.7`, we need to describe version of `meld3`, also version of `supervisor`. Why? New packages version may not be compatible for Centos 6. For sure i have try for new version and not work on my VM. We need to install this packages using `pip`

  ```sh
  $ pip install supervisor==3.3.4 meld3==0.6.7
  ```

  If permission error we need to run as sudo

  ```sh
  $ sudo pip install supervisor==3.3.4 meld3==0.6.7
  ```

---

- ### Create Supervisor Configuration Path

  - First, we will get this path `/etc/supervisor`
  
  - Create configuration path

    ```sh
    $ sudo mkdir /etc/supervisor/conf.d
    ```
  
  - Inside of `conf.d` directory there will be the configuration file for controlling and managing process.

---

- ### Modify Supervisor Configuration

  - Modify `/etc/supervisord.conf` 
    
    ```sh
    $ sudo vi /etc/supervisord.conf
    ```

  - Replace all configuration with this
  
    ```sh
    [unix_http_server]
    file=/tmp/supervisor.sock

    [supervisord]
    logfile=/tmp/supervisord.log
    logfile_maxbytes=50MB
    logfile_backups=10
    loglevel=info
    pidfile=/tmp/supervisord.pid
    nodaemon=false
    minfds=999999
    minprocs=200

    [rpcinterface:supervisor]
    supervisor.rpcinterface_factory = supervisor.rpcinterface:make_main_rpcinterface

    [supervisorctl]
    serverurl=unix:///tmp/supervisor.sock

    [include]
    files = /etc/supervisor/conf.d/*.ini
    ```

  - Run `$ sudo supervisord` for starting.

---

- ### Example .ini Configuration

  - We will try to run node-exporter process using `supervisor`
  - Create file configuration inside `/etc/supervisor/conf.d`
  - Name it with `node_exporter.ini`
  - Add this configuration
    ```ini
    [program:node_exporter]
    command=/path/to/binary/node_exporter
    directory=/path/to/additional/node_exporter/conf
    process_name=%(program_name)s
    numprocs=1
    umask=022
    priority=1
    user=root
    group=root
    autostart=true
    autorestart=true
    redirect_stderr=true
    stdout_logfile=/var/log/supervisor/node_exporter.log
    ```

---

#### References
- http://supervisord.org/installing.html