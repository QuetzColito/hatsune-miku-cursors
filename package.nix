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
    sha256 = "QsvBfKKV9TSCn/DbKSRN7z5QRVPaJOyZQA7UmKM+CrE=";
  };

  installPhase = ''
    runHook preInstall
    install -dm 755 $out/share/icons
    mv miku-cursor $out/share/icons/Miku\ Cursor
    runHook postInstall
  '';
}
