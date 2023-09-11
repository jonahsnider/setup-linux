# lazygit
alias lg lazygit

# Git
alias g git
alias ga "git add"
alias gA "git add -A"
alias gcm "git commit -m"
alias gp "git pull"
alias gP "git push"
alias gr "git rebase"
alias gc "git checkout"
alias grc "git rebase --continue"
alias grm "git rebase master"
alias gR "git reset"
alias gb "git branch"
alias gs "git switch"
alias gsm git_switch_main

# Watson
if type -q watson
  alias w watson
  alias ws "watson start"
  alias wS "watson stop"
  alias wC "watson cancel"
  alias wr "watson report"
  alias wl "watson log"
  alias we "watson edit"
  alias wst "watson status"
  alias wR "watson remove"
end

# Yarn
alias y yarn
alias ya "yarn add"
alias yR "yarn remove"
alias ys "yarn start"
alias ysd "yarn start:dev"
alias yp "yarn preview"
alias yt "yarn test"
alias yl "yarn lint"
alias yL "yarn lint --fix"
alias yS "yarn style --write"
alias yb "yarn build"
alias yd "yarn dev"
alias yw "yarn watch"

# Bun
alias b bun
alias bi "bun install"
alias ba "bun add"
alias bR "bun remove"
alias bs "bun start"
alias bsd "bun start:dev"
alias bp "bun preview"
alias bt "bun test"
alias bl "bun lint"
alias bL "bun lint --fix"
alias bS "bun style --write"
alias bb "bun run build"
alias bd "bun dev"
alias bw "bun watch"
alias bx "bunx"

# Docker
alias d docker
alias db "docker build"
alias dc "docker compose"
alias dcp "docker compose pull"
alias dcps "docker compose ps"
alias dcl "docker compose logs"
alias dcu "docker compose up"
alias dcD "docker compose down"
alias dcS "docker compose stop"

# cd
alias cdp "cd ~/programming"
if test -d ~/programming/voiceflow
  alias cdpv "cd ~/programming/voiceflow"
end
if test -d ~/programming/zws
  alias cdpz "cd ~/programming/zws"
end
if test -d ~/programming/team581
  alias cdpt "cd ~/programming/team581"
end

# Brew
if type -q brew
  alias br brew
  alias bru "brew update"
  alias brU "brew upgrade"
  alias brt "brew tap"
  alias bri "brew install"
end

# apt
if type -q apt; and test (uname) != "Darwin"
  alias a apt
  alias ai "apt install"
  alias aR "apt remove"
  alias au "apt update"
alias aU "apt upgrade"
end

# sudo
alias s sudo

# open
alias o open

# FFMPEG
alias ff ffmpeg

# squoosh
alias sq squoosh

# nano
alias N nano

# cURL
alias cu curl

# clear
alias c "clear -x"

# Biome
alias biome "yarn biome"
alias r "yarn biome"
alias rc "yarn biome check"
alias rC "yarn biome check --apply"
alias rt "yarn biome test"

# Turbo
# alias turbo "yarn turbo"
alias t "turbo"
alias tr "turbo run"

# vfcli
alias vf vfcli
alias vfe "vfcli env"
alias vfer "vfcli env reconnect"
# alias vfec "vfcli env connect"
# alias vfed "vfcli env disconnect"
alias vfeR "vfcli env reset"
alias vfel "vfcli env list"
alias vft "vfcli track"
alias vfta "vfcli track attach"
alias vftl "vfcli track list"
alias vfl "vfcli logs"

if test -d ~/programming/voiceflow/database-cli
  alias dbcli ~/programming/voiceflow/database-cli/bin/run
  alias vfdb ~/programming/voiceflow/database-cli/bin/run
end

# Python
alias py python

# Ruby
alias rb ruby

# Node.js
alias n node

# Gradle wrapper
alias gw ./gradlew
alias gwb "./gradlew build"
alias gwS "./gradlew spotlessApply"
