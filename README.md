<h1 align="center">
  <img src="assets/Linux-bootstrap-logo.jpg" alt="icon" width="200"></img>
  <br>
  <b>Linux bootstrap</b>
</h1>

<p align="center">My custom setting for Linux.</p>

<!-- Badges -->
<p align="center">
  <a href="https://github.com/DuckyMomo20012/dotfiles/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/QuanBlue/Linux-Bootstrap" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/QuanBlue/Linux-Bootstrap" alt="last update" />
  </a>
  <a href="https://github.com/QuanBlue/Linux-Bootstrap/network/members">
    <img src="https://img.shields.io/github/forks/QuanBlue/Linux-Bootstrap" alt="forks" />
  </a>
  <a href="https://github.com/QuanBlue/Linux-Bootstrap/stargazers">
    <img src="https://img.shields.io/github/stars/QuanBlue/Linux-Bootstrap" alt="stars" />
  </a>
  <a href="https://github.com/QuanBlue/Linux-Bootstrap/issues/">
    <img src="https://img.shields.io/github/issues/QuanBlue/Linux-Bootstrap" alt="open issues" />
  </a>
  <a href="https://github.com/QuanBlue/Linux-Bootstrap/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/QuanBlue/Linux-Bootstrap.svg" alt="license" />
  </a>
</p>

<p align="center">
  <b>
    <a href="https://github.com/QuanBlue/Linux-Bootstrap">Documentation</a> •
    <a href="https://github.com/QuanBlue/Linux-Bootstrap/issues/">Report Bug</a> •
    <a href="https://github.com/QuanBlue/Linux-Bootstrap/issues/">Request Feature</a>
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

## Usage

File `bootstrap.sh` will find all `setup.sh` files in all directories and run it. Then using `apt`, `snap`,... to install other packages.

Each directory will have a

-  `README.md` file to explain what it does and how to customize.
-  `setup.sh` file to install packages.

## Getting Started

### Prerequisites

-  Install `Git` on your system:

   ```bash
   sudo apt-get install git
   ```

-  Bash shell support.

### Run Locally

-  Auto install

   -  **Run from script**:

      File `install.sh` will clone this repository in `~/dotfiles` and run
      `bootstrap.sh` to install all packages and dotfiles.

      ```bash
      curl -sSL https://raw.githubusercontent.com/QuanBlue/Linux-Bootstrap/main/install.sh | bash -
      ```

   -  **Run manually**:

      Clone the project

      ```bash
      git clone https://github.com/QuanBlue/Linux-Bootstrap
      ```

      Go to the project directory

      ```bash
      cd Linux-Bootstrap
      ```

      Run the `install` script

      ```bash
      bash ./install.sh
      ```

-  After that, manually custom installed theme, using:
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

## Contributors

<a href="https://github.com/QuanBlue/Linux-Bootstrap/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=QuanBlue/Linux-Bootstrap" />
</a>

Contributions are always welcome!

## License

Distributed under MIT license. See
[LICENSE](./LICENSE) for more
information.

---

> Bento [@quanblue](https://bento.me/quanblue) &nbsp;&middot;&nbsp;
> GitHub [@QuanBlue](https://github.com/QuanBlue) &nbsp;&middot;&nbsp; Gmail quannguyenthanh558@gmail.com
