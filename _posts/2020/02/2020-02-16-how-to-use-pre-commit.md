---
layout: post
title: "How to Use Pre-Commit Hooks"
date: 2020-02-16 01:00:00 +0700
categories: [DevTools]
tags: [Programmer, Commitizen, Pre-Commit, Semtag, Git-Changelog]
author: Cloudy
---

---

## What we learn?

- Overview about pre-commit hooks
- Simple installation of pre-commit hooks
- How to use it? (simple example for project that contains **yaml**)

## How we do it?

- ### Overview
  ![](/assets/images/2020/2/15/htbgd.png)
      
  **What is pre-commit hooks?**

  A framework for managing and maintaining multi-language pre-commit hooks. This tools will identifying your code issues such as missing semicolons, trailing whitespace, and debug statements before submission to code review.
  We believe when we write code, we use best industry standard linters. With `pre-commit hooks` you can easy lint the code before commit.

  **Why we use pre-commit hooks?**
  
  Because it will linting our code automatically before comnmiting project to git repository.

---

- ### Installation

  Easy ways to isntall **pre-commit hooks** is using package manager.

  - Using **pip**
    ```sh
    $ pip install pre-commit
    ```

  - Using **homebrew**
    ```sh
    $ brew install pre-commit
    ```

  - Using **conda**
    ```sh
    $ conda install -c conda-forge pre-commit
    ```

---

- ### Implementation

  **Note**: This is example for using pre-commit hook for `Ansible Project` or `YAML File`

  - Make sure pre-commit installed
    ```sh
    $ pre-commit --version
    pre-commit 1.20.0
    ```

  - Add pre-commit configuration


  - Install git hook scripts


  - Run pre-commit for all file inside project directory
    ```sh
    $ pre-commit run --all-files
    ```

  - Run pre-commit
    ```
    $ pre-commit
    ```



---

#### References
- https://pre-commit.com/