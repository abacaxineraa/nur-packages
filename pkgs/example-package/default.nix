{ lib
, stdenv
, fetchFromGitHub
}:


stdenv.mkDerivation rec {
  pname = "openfortivpn-webview";
  version = "1.2.0-electron";

  src = fetchFromGitHub {
    owner = "gm-vm";
    repo = "openfortivpn-webview";
    rev = "v${version}";
    hash = "sha256-HheqDjlWxHJS0+OEhRTwANs9dyz3lhhCmWh+YH4itOk=";
  };

  meta = with lib; {
    description = "";
    homepage = "https://github.com/gm-vm/openfortivpn-webview";
    license = licenses.mit;
    maintainers = with maintainers; [ "abacaxineraa" ];
    mainProgram = "openfortivpn-webview";
    platforms = platforms.all;
  };
}
