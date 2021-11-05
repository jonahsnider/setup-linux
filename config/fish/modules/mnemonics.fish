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
alias gs "git switch"
alias gc "git checkout"
alias grc "git rebase --continue"
alias grm "git rebase master"
alias gR "git reset"
alias gb "git branch"

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
alias yt "yarn test"
alias yl "yarn lint"
alias yL "yarn lint --fix"
alias yS "yarn style --write"
alias yb "yarn build"
alias yd "yarn dev"

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
alias ff ffmpeg

# squoosh
alias sq squoosh

# nano
alias N nano

# cURL
alias cu curl

# clear
alias c "clear -x"

# Rome
alias rome "yarn rome"
alias r "yarn rome"
alias rc "yarn rome check"
alias rC "yarn rome check --apply"
alias rt "yarn rome test"

# vfcli
alias vf vfcli

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
