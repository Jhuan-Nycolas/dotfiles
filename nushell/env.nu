# Oh my posh
source ./prompt.nu

# Zoxide
source ./zoxide.nu

# Nix
try { .nix-profile/bin/nix --version } | null
if $env.LAST_EXIT_CODE != 1 {
  $env.PATH = ($env.PATH | prepend "~/.nix-profile/bin")
}
