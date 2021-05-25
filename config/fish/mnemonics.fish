# Git
alias g git
alias ga "git add"
alias gA "git add -A"
alias gc "git commit"
alias gs "git status"
alias gp "git pull"
alias gP "git push"

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
end

# Node.js
alias n node

# Yarn
alias y yarn
alias ya "yarn add"
alias yR "yarn remove"
alias ys "yarn start"
alias yt "yarn test"
alias yl "yarn lint"
alias yL "yarn lint --fix"
alias yS "yarn style --write"
alias yb "yarn build"
alias yd "yarn dev"

# Docker
alias d docker
alias dc "docker compose"

# cd
alias cdp "cd ~/programming"
if test -d ~/programming/voiceflow
  alias cdpv "cd ~/programming/voiceflow"
end
if test -d ~/programming/zws
  alias cdpz "cd ~/programming/zws"
end

# Brew
if type -q brew
  alias b brew
  alias bu "brew update"
  alias bU "brew upgrade"
  alias bt "brew tap"
  alias bi "brew install"
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
alias ff fmpeg

# squoosh
alias sq squoosh

# nano
alias N nano

# cURL
alias cu curl

# Wget
alias w wget

# clear
alias c "clear -x"

# vfcli
alias vf vfcli
