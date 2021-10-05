if set -q SETUP_LINUX_INSTALL
else
  # Change Node.js version with Fast Node Manager when directories changed and once on boot
  fnm env --use-on-cd | source
  # Silently fail
  fnm use > /dev/null 2>&- || :
end

#region Python
# Use Python 3 by default
alias python=(which python3)
#endregion

#region Yarn
# Alias Squoosh CLI
alias squoosh=squoosh-cli
#endregion
