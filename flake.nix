{
  description = "Brevo v1.0";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        tools = pkgs.writeScriptBin "generate" ''
          openapi-generator-cli generate -i https://api.brevo.com/v3/swagger_definition_v3.yml --skip-validate-spec -g ruby -o . "--additional-properties=gemName=brevo,library=faraday"
        '';

        packages = with pkgs; [ openapi-generator-cli tools ];
      in
      {
        devShells = rec { 
          default = pkgs.mkShell {
            buildInputs = packages;
          };
        };
      });
}

