EDITOR := "nvim"

rebuild:
        sudo nixos-rebuild switch --flake

edit:
        sudo {{ EDITOR }}
        git add -A
        just rebuild

commit:
        just rebuild
        git commit
        git push
