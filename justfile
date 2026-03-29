EDITOR := "nvim"

rebuild:
        git add -A
        sudo nixos-rebuild switch --flake

edit:
        sudo {{ EDITOR }}
        just rebuild

commit:
        just rebuild
        git commit
        git push

update:
        nix-channel --update
        just rebuild
