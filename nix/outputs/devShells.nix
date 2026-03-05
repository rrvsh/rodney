{
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          chromium
          go
          gopls
        ];
        shellHook = ''
          export ROD_CHROME_BIN="${pkgs.chromium}/bin/chromium"
        '';
      };
    };
}
