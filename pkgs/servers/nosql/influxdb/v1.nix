{ lib, buildGoPackage, fetchFromGitHub }@args:

import ./default.nix (args // rec {
  
  version = "1.0.0-beta3";

  src = fetchFromGitHub {
    owner = "influxdata";
    repo = "influxdb";
    rev = "v${version}";
    sha256 = "80e7e8ab7236b04bb0df65cc5134f89ea0a389057937f7685d0055a852e40930";
  };
}) 
