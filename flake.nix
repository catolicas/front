{
  description = "Front-End";
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/78822fca1"; };
  outputs = inputs:
    with inputs;
    let
      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs { inherit system; };
    in { devShell."${system}" = import ./shell.nix { inherit pkgs; }; };
}
