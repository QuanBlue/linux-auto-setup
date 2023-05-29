# Zsh

ZSH, also called the Z shell, is an extended version of the Bourne Shell (sh), with plenty of new features, and support for plugins and themes. Since it’s based on the same shell as Bash, ZSH has many of the same features, and switching over is a breeze.

Using theme `powerlevel10k` and plugin `zsh-autosuggestions` and `zsh-syntax-highlighting`.

This directory will setup the `zsh` tool.

## Getting Started

File `setup.sh` will install `zsh` following the [official guide](https://docs.zsh.com/engine/install/ubuntu/).

## Usage

Run `setup.sh` to install `zsh`:

```bash
./setup.sh
```

Change `zsh` shell theme:
Find `ZSH_THEME` line then you need to enable it in `.zshrc`

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Change terminal font to `MesloLGS NF Regular`, size 10:

```
Preference > Unnamed > Custom Font
```
