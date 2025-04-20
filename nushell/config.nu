$env.config.table.mode = "rounded"
$env.config.edit_mode = "vi"
$env.config.show_banner = false
$env.config.buffer_editor = "nvim"

# Aliases
alias cd = z
alias cat = bat
alias c = clear
alias clock = tty-clock -c -C 4 -b

alias icon = grid -i -s '  '

# Ls Aliases
alias l = ls **/*
alias ll = l -a
alias la = ls -a
alias nvim = nix run github:Jhuan-Nycolas/Nvim

# Theme (Catpuccin Macchiato)
source ./catpuccin.nu
