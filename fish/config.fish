# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end
    if test "$TERM" != linux
        starship init fish | source
        enable_transience
    end

    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    # kitty doesn't clear properly so we need to do this weird printing
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias i "sudo nano /etc/nixos/modules/packages.nix && sudo nixos-rebuild switch"
    alias nixos "cd /etc/nixos/"
    alias makee "sudo nano /etc/nixos/configuration.nix"
    alias cfish "nvim ~/.config/fish/config.fish"
    alias c clear
    alias fast fastfetch
    alias f "fastfetch --logo none"
    alias depclean "sudo nix-collect-gabarge -d"
    alias nixmod "cd /etc/nixos/modules"
    alias usedir "sudo nano /etc/nixos/modules/packages.nix"
    alias up "sudo nixos-rebuild switch --upgrade"
    if test "$TERM" != linux
        alias ls 'eza --icons=auto'
    end
    if test "$TERM" = xterm-kitty
        alias ssh 'kitten ssh'
    end
end
