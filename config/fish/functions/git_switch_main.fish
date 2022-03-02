function git_switch_main -d "Switch to the main branch of a Git repository"
  if git rev-parse --verify main &> /dev/null
    git switch main
  else
    git switch master
  end
end
