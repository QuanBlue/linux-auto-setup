<h1 align="center">
  <img src="assets/Linux-bootstrap-logo.png" alt="icon" width="200"></img>
  <br>
  <b>Linux bootstrap</b>
</h1>

<p align="center">My custom setting for Linux.</p>

<!-- Badges -->
<p align="center">
  <a href="https://github.com/QuanBlue/linux-auto-setup/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/QuanBlue/linux-auto-setup" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/QuanBlue/linux-auto-setup" alt="last update" />
  </a>
  <a href="https://github.com/QuanBlue/linux-auto-setup/network/members">
    <img src="https://img.shields.io/github/forks/QuanBlue/linux-auto-setup" alt="forks" />
  </a>
  <a href="https://github.com/QuanBlue/linux-auto-setup/stargazers">
    <img src="https://img.shields.io/github/stars/QuanBlue/linux-auto-setup" alt="stars" />
  </a>
  <a href="https://github.com/QuanBlue/linux-auto-setup/issues/">
    <img src="https://img.shields.io/github/issues/QuanBlue/linux-auto-setup" alt="open issues" />
  </a>
  <a href="https://github.com/QuanBlue/linux-auto-setup/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/QuanBlue/linux-auto-setup.svg" alt="license" />
  </a>
</p>

<p align="center">
  <b>
    <a href="https://github.com/QuanBlue/linux-auto-setup">Documentation</a> •
    <a href="https://github.com/QuanBlue/linux-auto-setup/issues/">Report Bug</a> •
    <a href="https://github.com/QuanBlue/linux-auto-setup/issues/">Request Feature</a>
  </b>
</p>

<br />

<details open>
<summary>Table of Contents</summary>

-  [Usage](#usage)
-  [Getting Started](#getting-started)
   -  [Prerequisites](#prerequisites)
   -  [Run Locally](#run-locally)
-  [Contributors](#contributors)
-  [License](#license)
</details>

# Usage

File `bootstrap.sh` will find all `setup.sh` files in all directories and run it. Then using `apt`, `snap`,... to install other packages.

Each directory will have a

-  `README.md` file to explain what it does and how to customize.
-  `setup.sh` file to install packages.

# Getting Started

## Prerequisites

-  Install `Git` on your system:

   ```bash
   sudo apt-get install git
   ```

-  Bash shell support.

## Run Locally

**Step 1:** Auto install

   -  **Run from script**:

      File `install.sh` will clone this repository in `~/dotfiles` and run
      `bootstrap.sh` to install all packages and dotfiles.

      ```bash
      curl -sSL https://raw.githubusercontent.com/QuanBlue/linux-auto-setup/main/install.sh | bash -
      ```

   -  **Run manually**:

      Clone the project

      ```bash
      git clone https://github.com/QuanBlue/linux-auto-setup
      ```

      Go to the project directory

      ```bash
      cd linux-auto-setup
      ```

      Run the `install` script

      ```bash
      bash ./install.sh
      ```

**Step 2:** manually custom installed theme, using:
   -  **`Tweaks (Gnome-tweaks)`** and custom: `icon`, `cursor`, `background`
   -  **`Extensions (Gnome-shell-extensions)`** and custom: installed `extensions`
   -  **`Setting`** and custom: `Key board shortcut`, `Startup application`, `Power`,...
-  Set up `Onedrive`:
   Follow this document from [How to Launch OneDrive on Ubuntu 22.04?](https://itslinuxfoss.com/install-use-onedrive-ubuntu-22-04/)

   ```bash
   systemctl --user stop onedrive
   onedrive --synchronize --resync
   systemctl --user start onedrive
   ```
# Roadmap
[x] Auto install package
[ ] Selection package menu

# Contributors

<a href="https://github.com/QuanBlue/linux-auto-setup/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=QuanBlue/linux-auto-setup" />
</a>

Contributions are always welcome!

## License

Distributed under MIT license. See
[LICENSE](./LICENSE) for more
information.

---

> Bento [@quanblue](https://bento.me/quanblue) &nbsp;&middot;&nbsp;
> GitHub [@QuanBlue](https://github.com/QuanBlue) &nbsp;&middot;&nbsp; Gmail quannguyenthanh558@gmail.com
