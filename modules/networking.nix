{
  networking.networkmanager.enable = true;

  networking.firewall.checkReversePath = "loose";
  networking.wireless.enable = true;

  networking.nameservers = [
    "9.9.9.9"
    "149.112.112.112"
    "100.100.100.100"
    "8.8.8.8"
    "1.1.1.1"
  ];

  networking.search = ["example.ts.net"];

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [80 443 8080 11434];
    allowedTCPPortRanges = [
      {
        from = 1714;
        to = 1764;
      } # KDE Connect
    ];
    allowedUDPPortRanges = [
      {
        from = 1714;
        to = 1764;
      } # KDE Connect
    ];
  };
}
