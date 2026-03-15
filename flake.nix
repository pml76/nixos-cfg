{
  description = "My NixOS flake for my work-machine's VM";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos-work = nixpkgs.lib.nixosSystem {
      modules = [
        ./workstations/work/configuration.nix
      ];
    };
    nixosConfigurations.nixos-home = nixpkgs.lib.nixosSystem {
      modules = [
        ./workstations/home/configuration.nix
      ];
    };
  };
}
