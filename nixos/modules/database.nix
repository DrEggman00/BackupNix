{ pkgs, ... }:

{
  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
    ensureDatabases = [ "ortoo" ];
    ensureUsers = [
      {
        name = "dr";
        ensurePermissions = {
          "ortoo.*" = "ALL PRIVILEGES";
        };
      }
    ];
  };
}
