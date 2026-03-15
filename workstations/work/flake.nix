{
  description = "My NixOS flake for my work-machine's VM";

  inputs = {
    nixpkgs.url = "github.com/nixpkgs/nixos-25.11"
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixConfigurations.nixos-work = nixpgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
      ];
    };
  };
}
