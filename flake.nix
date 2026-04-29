{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    helium.url = "gitlab:ntgn/helium-flake";
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        # IMPORTANT: To ensure compatibility with the latest Firefox version, use nixpkgs-unstable.
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    mango,
    home-manager,
    nvf,
    helium,
    zen-browser,
  }: {
    nixosConfigurations.roosevelt = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        helium.nixosModules.helium
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.sam = {
              imports =
                [
                  helium.homeModules.helium
                  ./home.nix
                ]
                ++ [
                  mango.hmModules.mango
                ];
            };
            backupFileExtension = "backup";
          };
        }
        nvf.nixosModules.default
        mango.nixosModules.mango
        {
          programs.mango.enable = true;
        }
      ];
    };
  };
}
