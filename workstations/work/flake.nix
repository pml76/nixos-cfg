{
  description = "My NixOS flake for my work-machine's VM";

  inputs = {
    nixpkgs.url = "github.com/NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixConfigurations.nixos-work = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
      ];
    };
  };
}
