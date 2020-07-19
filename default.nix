{ mkDerivation, aeson, base, blaze-builder, bytestring, containers
, exceptions, hashable, hpack, http-client, http-types, mtl
, network-uri, scientific, semigroups, semver, stdenv, text, time
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "bloodhound";
  version = "0.17.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base blaze-builder bytestring containers exceptions hashable
    http-client http-types mtl network-uri scientific semigroups semver
    text time transformers unordered-containers vector
  ];
  libraryToolDepends = [ hpack ];
  preConfigure = "hpack";
  homepage = "https://github.com/bitemyapp/bloodhound.git#readme";
  description = "Elasticsearch client library for Haskell";
  license = stdenv.lib.licenses.bsd3;
}
