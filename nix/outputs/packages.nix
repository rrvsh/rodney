{ ... }:
{
  perSystem =
    { pkgs, ... }:
    let
      rodney = pkgs.buildGoModule {
        pname = "rodney";
        version = "unstable";
        src = ../..;
        vendorHash = "sha256-h4U43W3hLoF+p25/jNRaW8okeEzAZQEmKtwB5l4kGW4=";
        subPackages = [ "." ];
        doCheck = false;
        ldflags = [
          "-s"
          "-w"
        ];
      };
    in
    {
      packages = {
        inherit rodney;
        default = rodney;
      };
    };
}
