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

#region Go
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/programming/go
#endregion

#region Brew
if test -f /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
end
#endregion
