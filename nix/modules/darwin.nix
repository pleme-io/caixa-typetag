# nix/modules/darwin.nix — auto-generated from typetag.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.typetag; in {
  options.services.typetag = {
    enable = lib.mkEnableOption "typetag";
    package = lib.mkOption { type = lib.types.package; default = pkgs.typetag or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
