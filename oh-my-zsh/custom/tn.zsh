function tn {
  if $@; then
    terminal-notifier -title "💚 Done" -message "$*" -sender com.googlecode.iterm2
  else
    terminal-notifier -title "💔 Failed" -message "$*" -sender com.googlecode.iterm2
  fi
}
