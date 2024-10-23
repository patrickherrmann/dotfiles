fzf_preview() {
  if [ -d $1 ]; then
    eza --tree --color=always $1
  else
    bat -n --color=always $1
  fi
}
