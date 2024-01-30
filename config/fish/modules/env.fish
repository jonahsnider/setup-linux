set -gx EDITOR nano

#region GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)
#endregion

#region custom env
set -gx NODE_ENV development
#endregion

#region Deno
set -gx DENO_INSTALL ~/.deno
#endregion

#region Proto
set -gx PROTO_HOME "$HOME/.proto"
set -gx PATH "$PROTO_HOME/shims:$PROTO_HOME/bin" $PATH
#endregion

#region Bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH $BUN_INSTALL/bin $PATH
#endregion

#region fnm
set -gx FNM_COREPACK_ENABLED true
#endregion

#region Python
# pyenv
if test (which pyenv)
  pyenv init - | source
end
#endregion

#region Secrets
# GitHub token
if test -f ~/.gh_token
  set -gx GITHUB_TOKEN (cat ~/.gh_token)
  set -gx HOMEBREW_GITHUB_API_TOKEN $GITHUB_TOKEN
end

# npm token
if test -f ~/.npm_token
  set -gx NPM_TOKEN (cat ~/.npm_token)
end
#endregion

#region .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true
#endregion

#region Brew
if test -f /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
end
#endregion

#region Go
set -gx GOROOT (go env GOROOT)
set -gx GOPATH (go env GOPATH)
#endregion Go
