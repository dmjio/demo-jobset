{ mkDerivation, stdenv, base, servant-server, wai, warp, aeson }:
mkDerivation {
  pname = "demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base servant-server wai warp aeson ];
  testHaskellDepends = [ base ];
  license = stdenv.lib.licenses.bsd3;
}
