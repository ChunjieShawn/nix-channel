{ stdenv, fetchgit }:

stdenv.mkDerivation {
  name = "heelo-0.0.0";
  src = fetchgit {
    url = "https://github.com/ChunjieShawn/pybuild.git";
  };
}
