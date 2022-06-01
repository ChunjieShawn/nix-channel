let pkgs =  import <nixpkgs>{
    config.allowBroken = true;
    config.allowUnfree = true;
};
in
pkgs.python39Packages.buildPythonPackage {
  name = "heelo-0.0.0";

  buildInputs = [ pkgs.perl ];
  src = pkgs.fetchgit {
    url = "https://github.com/ChunjieShawn/pybuild.git";
    rev = "22d3545b757ac9c6e84003b3614bac24c8146fb0";
    sha256 = "sha256-SuqdfR3jU+4ME2wDEuz1RwMRZf+l70fH96liyQwd+6c=";
  };
}
