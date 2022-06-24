{ pkgs ? import ./nixpkgs { } }:
pkgs.stdenv.mkDerivation {
  name = "elm-env";
  buildInputs = with pkgs.elmPackages; [
    elm
    elm-analyse
    elm-doc-preview
    elm-format
    elm-live
    elm-test
    elm-upgrade
    elm-xref
    elm-language-server
    elm-verify-examples
    elmi-to-json
  ];
}
