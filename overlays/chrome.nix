{ pkgs
, ...
}:
(pkgs.google-chrome.override {
  commandLineArgs = [
    "--enable-features=UseOzonePlatform"
    "--ozone-platform=wayland"
    #"--proxy-server='http://127.0.0.1:8080'"
  ];
})
