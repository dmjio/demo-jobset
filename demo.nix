{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "demo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base ];
  license = stdenv.lib.licenses.unfree;
}
