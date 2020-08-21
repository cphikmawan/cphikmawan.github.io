---
layout: post
title: "How to Become a Good Developer"
date: 2020-08-20 02:00:00 +0700
categories: [DevTools]
tags: [Commitizen, Pre-Commit, Semtag, Git-Changelog]
author: Cloudy
---

## How we do it?

---

- ### Overview
  
  Last year i graduated from college. Then i started working in technology division. Imagine in  a week you need to learn few new things at same time, thats why you will get so much new things. But now, i will share about some devtools what i learn both in college and start-up that makes your work clean and tidy. At least your teammates are not confused with your work.

---

- ### What will we discuss?

  - CLI (Command-Line Interface)
  - Git
    - Pre-Commit Hooks
    - Conventional Commit Message
    - Semtag & Git-Changelog

---

- ### Lets discuss!
  - #### CLI (Command-Line Interface)
    ![](/assets/images/2019/10/14/wilzsm1.png)

    If you dislike using CLI, maybe you need to decorate or improve your terminal until you comfortable to use CLI. You can use interactive shell such as [Z Shell (Zsh)](https://github.com/ohmyzsh/ohmyzsh), [Fish Shell](https://fishshell.com/), [NuShell](https://github.com/nushell/nushell) and any other.
    Dont use default shell if you cant work fast, that interactive shell have great plugins that will help for using CLI in terminal. I recommend for learning about CLI first before you start become a developer, the reason for using CLI:
    - Need to operate machine using root user
    - Debugging
    - Setup application dependencies
    - Developing application
    - Set application ENV<br><br>

  - #### Git
    Git is a tool that must be used by developers, git will help you work as a team when developing an application (web apps, android, automation, data migration, etc).
    
    1. **_Pre-Commit Hooks_**
      
        ![](/assets/images/2020/2/15/htbgd.png)
          
        A framework for managing and maintaining multi-language pre-commit hooks. This tools will identifying your code issues such as missing semicolons, trailing whitespace, and debug statements before submission to code review.
        We believe when we write code, we use best industry standard linters. With `pre-commit hooks` you can easy lint the code before commit.

         - **Installation**

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

         - **Implementation**

           **Note**: This is example for using pre-commit hook for `Ansible Project` or `YAML File`

           - **Make** sure pre-commit installed
             ```sh
             $ pre-commit --version
             pre-commit 1.20.0
             ```

           - **Add** pre-commit configuration `.pre-commit-config.yaml`

             - Generate basic configuration
               ```sh
               $ pre-commit sample-config
               ```

             - Example of `.pre-commit-config.yaml`

               ```yaml
               repos:
                 - repo: git://github.com/pre-commit/pre-commit-hooks
                   rev: v2.4.0
                   hooks:
                     - id: check-merge-conflict
                     - id: check-symlinks
                     - id: check-yaml
                     - id: detect-private-key
                     - id: end-of-file-fixer
                     - id: trailing-whitespace
               ```

             - Full option and plugins can be shown [here](https://pre-commit.com/#plugins)

             - Other available [supported hooks](https://pre-commit.com/hooks.html)<br><br>

           - **Install** git hook scripts
             ```sh
             $ pre-commit install
             pre-commit installed at .git/hooks/pre-commit
             ```

           - **Run** pre-commit hooks

             - All file inside project directory
               ```sh
               $ pre-commit run --all-files
               ```

             - Staged files (manually)
               ```
               $ pre-commit
               ```

             - Automatically when committing file changed
               ```sh
               $ git commit -m "message"
               ```

               Default commit command will trigger for running pre-commit hooks when we have `.pre-commit-config.yaml` file inside project directory.
               
    1. **_Conventional Commit Message_**
   
        If you are developer, make sure you have good commit message when submit code to git repository. One of type commit message is [Conventional Commit Message](https://www.conventionalcommits.org/en/v1.0.0/).
        Consistent and clean on commit message will help work on team easier(readable), automatically determine version bump and automatically generating tidy CHANGELOG.md. The structure of Conventional Commit Message shown below:

        ```
        <type>(optional scope): <description>

        [optional body]

        [optional footer(s)]
        ```

        That structure explanation is:
        - **type**: determine of what you changed in the code. `feat` for new features or `fix` fixing bugs and others.
          
          type allowed: `feat`:, `fix`:, `build`:, `chore`:, `ci`:, `docs`:, `style`:, `refactor`:, `perf`:, `test`:, and others.

        - **scope**: determine where you changed in the code. such as `posts`, `db`, `users` and others.

        - **description**: determine why you changed the code? eg. `create new user privileges`.

        - **body and footer**: im rarely use this things, follow this [link](https://www.conventionalcommits.org/en/v1.0.0/) for explanation.

        And full example should be:
        ```
        feat(db): create new user privileges
        ```

        I think somehow we will lazy to write that structure, so we have solution for that issue. There is devtools named **[commitizen](https://github.com/commitizen/cz-cli)**, its function to generate structure above.
        
    2. **_Semtag & Git-Changelog_**

        `Semtag` is Semantic Tagging for Git, the main function is to versioning your git repository project. its you will be able to releasing your project on git, when you going to release tab eg. [release](https://github.com/cphikmawan/cphikmawan.github.io/releases) you will have release version of your project.

        eg. version `1.0.0` we can call it `major.minor.patch`.

        And how about `git-changelog`? 
        
        This devtools funtion is for generating `CHANGELOG.md`. This will very useful for tracking history of your project. But it will need `Conventional Commit Message` and `Tag Version`. If your commit have `Conventional Commit Message` structure and got release tags eg `1.0.0` you will be able to generate the `CHANGELOG.md`.

        See this example [CHANGELOG.md](https://github.com/cphikmawan/cphikmawan.github.io/blob/master/CHANGELOG.md)

        How to [use semtag](https://github.com/pnikosis/semtag) and How to [generate changelog](https://github.com/git-chglog/git-chglog).

---

#### References
- [https://pre-commit.com/](https://pre-commit.com/)
- [https://www.conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/)
- [https://github.com/commitizen/cz-cli](https://github.com/commitizen/cz-cli)
- [https://github.com/pnikosis/semtag](https://github.com/pnikosis/semtag)
- [https://github.com/git-chglog/git-chglog](https://github.com/git-chglog/git-chglog)
