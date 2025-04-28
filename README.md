# tino's Neovim configuration

This is my custom configuration for *Neovim*.  
I use LazyVim (refer to the [documentation](https://lazyvim.github.io/installation)),
so this config was originally created with LazyVim starting point.

## Requirements

These instructions are meant for Linux and MacOS. For Windows, you're on your
own.

1. [Neovim](https://neovim.io/) `v0.11+`.
2. `pipreq`.
3. `fd-find`.
4. `wl-clipboard` if you use Wayland, `xclip` for X11 and MacOS.

## How to use this configuration

Download this repository in `~/.config/nvim/`.

## Java support

To enable Java support, please use Java 21 as the default version for your
shells (since `nvim-jdtls` requires it). You can check the current java version with:

```shell
java --version
```

To work with projects using different Java versions, you must set an environment
variable for every version on your system.  
For example, if you have Java 8, 11, 17, and 21 installed on your system, you can
add the following lines in your `~/.bashrc` file:

```shell
export JAVA_HOME_8="$HOME/.sdkman/candidates/java/8.0.442-tem"
export JAVA_HOME_11="$HOME/.sdkman/candidates/java/11.0.26-tem"
export JAVA_HOME_17="$HOME/.sdkman/candidates/java/17.0.14-tem"
export JAVA_HOME_21="$HOME/.sdkman/candidates/java/21.0.6-tem"
```

Of course you have to adjust each path for what you have installed on your
system.

> Each available Java version will be automatically detected via the environment
> variables you set.

After setting the environment variables, restart your terminal for simplicity.  
Then you can change the Java runtime to use in a project by executing
:JdtSetRuntime inside of Neovim, after opening a Java file.
