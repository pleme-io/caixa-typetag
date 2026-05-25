# nix/modules/home-manager.nix — auto-generated from typetag.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.typetag; in {
  options.programs.typetag = {
    enable = lib.mkEnableOption "typetag";
    package = lib.mkOption { type = lib.types.package; default = pkgs.typetag or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
