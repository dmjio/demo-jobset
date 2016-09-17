{  }:
let
  pkgs = import <nixpkgs> {};
  jobs = { demo = pkgs.callPackage ./. {}; };
in jobs
