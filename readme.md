# setup-linux

Sets up my Linux.

Should be run on a recent version of Ubuntu.

```sh
# You must be in the setup-linux directory for things to work
git clone https://github.com/pizzafox/setup-linux.git
cd setup-linux
./init.bash
```

You will need to enter the root password and your user password.
You will probably get prompted with y/n input from SDKMAN!.
The entire process should only take a few minutes.

## What it does

Installs a bunch of tools and programming languages.
Configures other things too.

- Nim (via choosenim)
- Node.js
  - Yarn
- Rust
  - Starship via cargo
- SDKMAN!
  - Java
  - Gradle
- Fish
  - Fisher
- Keybase
- GitHub CLI
- .gitconfig
