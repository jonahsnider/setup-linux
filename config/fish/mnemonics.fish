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

# Docker
alias d docker
alias dc "docker compose"

# cd
alias cdp "cd ~/programming"
if test -d ~/programming/voiceflow
  alias cdpv "cd ~/programming/voiceflow"
end

# Brew
if type -q brew
  alias b brew
  alias bu "brew update"
  alias bU "brew upgrade"
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
alias c curl

# Wget
alias w wget
