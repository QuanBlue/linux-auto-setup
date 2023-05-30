# Zsh

ZSH, also called the Z shell, is an extended version of the Bourne Shell (sh), with plenty of new features, and support for plugins and themes. Since it’s based on the same shell as Bash, ZSH has many of the same features, and switching over is a breeze.

Using theme `powerlevel10k` and plugin `zsh-autosuggestions`, `zsh-syntax-highlighting`,...

This directory will setup the `zsh` tool.

## Getting Started

File `setup.sh` will install `zsh` following:

-  [Install ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
-  [Setting terminal schema](https://itsfoss.com/pywal/)
-  [Install Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
-  [Powerlevel10k theme](https://github.com/romkatv/powerlevel10k)
-  [Spaceship theme](https://github.com/spaceship-prompt/spaceship-prompt)

## Usage

#### Run `setup.sh` to install `zsh`:

```bash
./setup.sh
```

#### Change `zsh` shell theme:

Find `ZSH_THEME` line then you need to enable it in `.zshrc`

```bash
ZSH_THEME="<theme>"
```

> **Note:**  
> `<theme>`: `powerlevel10k` or `spaceship`

#### Change terminal:

-  Font to `MesloLGS NF Regular`, size 10:

   ```
   Preference > Unnamed > Custom Font
   ```

-  If you want auto change background and change terminal's color schema follow background:

   -  Install `pywal`:

      ```bash
      sudo pip3 install pywal
      ```

   -  Change background and color schema:
      ```bash
      wal -i "path/to/image"
      ```

   > **Note:** More detail: [pywal document](https://itsfoss.com/pywal/)
