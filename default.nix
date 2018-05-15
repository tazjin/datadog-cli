{ pkgs ? import <nixpkgs> {} }:

let cargo = pkgs.callPackage ./Cargo.nix {};
in cargo.datadog_cli {}
