{

  description = "NeoVim Flake";

  inputs = {
    # Flake-parts
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    # Nixpkgs
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    # Nixvim
    nixvim = {
      url = "github:nix-community/nixvim/main";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };

  outputs = {
    flake-parts,
    nixpkgs,
    nixvim,
    self,
    ...
  } @ inputs:
  flake-parts.lib.mkFlake {inherit inputs;} {
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    perSystem = {
      pkgs,
      self,
      system,
      ...
    }: let
      inherit (self) outputs;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      nixvimModule = {
        inherit pkgs;
        module = import ./config;
        # You can use `extraSpecialArgs` to pass additional arguments to your module files
        extraSpecialArgs = {
          # inherit (inputs) foo;
        };
      };
    in

    {
      checks = {
        default = inputs.nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule nixvimModule;
      };

      packages = {
        default = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule nixvimModule;
      };
    };
  };
}
