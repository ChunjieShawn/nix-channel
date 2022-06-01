{ pkgs ? import <nixpkgs> { } }:
{ stdenv, fetchgit }:

let
  theApp = stdenv.mkDerivation {
    name = "heelo";
    src = fetchgit {
      url = "https://github.com/ChunjieShawn/pybuild.git";
    };
  }
in {
  heelo = theApp;
}
