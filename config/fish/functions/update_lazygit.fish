function update_lazygit -d "Update lazygit to the specified version"
  set installDir /tmp
  set filename $installDir/lazygit_$argv

  # Download
  wget -q -O $filename.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v"$argv"/lazygit_"$argv"_Linux_x86_64.tar.gz"
  # Download
  tar xf $filename.tar.gz -C $installDir
  # Replace version
  sudo mv $installDir/lazygit (which lazygit)

  echo lazygit $argv installed
end
