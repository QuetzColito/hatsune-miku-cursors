{
  stdenv,
  fetchFromGitHub,
}:
stdenv.mkDerivation rec {
  pname = "hatsune-miku-cursors";
  version = "1.2.7";

  src = fetchFromGitHub {
    owner = "QuetzColito";
    repo = "hatsune-miku-cursors";
    rev = version;
    sha256 = "";
  };

  installPhase = ''
    runHook preInstall
    install -dm 755 $out/share/icons
    mv miku-cursor-linux $out/share/icons/miku-cursor-linux
    runHook postInstall
  '';
}
