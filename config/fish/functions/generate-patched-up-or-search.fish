function generate-patched-up-or-search -d "Generates an updated up-or-search function"
  set function_path (dirname (status --current-filename))/up-or-search.fish
  set patch_path (dirname (status --current-filename))/up-or-search.fish.patch

  # Copy function
  functions up-or-search > $function_path

  # Patch function
  git apply $patch_path
end
