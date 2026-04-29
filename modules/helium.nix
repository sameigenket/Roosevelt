{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.helium.nixosModules.helium
  ];
  programs.helium = {
    enable = true;
    defualtBrowser = true;

    extensions = with config.programs.helium.presents; [
      vimium
      darkReader
      bitwarden
      {
        id = "mnjggcdmjocbbbhaepdhchncahnbgone";
        hash = "sha256-nE5FE3Eo1jG8sT1KYjVl8JRbmAiyhN8IZObHsAIb0wY=";
      }
      {
        id = "hipekcciheckooncpjeljhnekcoolahp";
        hash = "sha256-3a3HVG6dWVRx+EQ48gohNlu3BOzVZrpoZCxnf3chzRY=";
      }
      {
        id = "likgccmbimhjbgkjambclfkhldnlhbnn";
        hash = "sha256-aVMoZi9k/5LDiVkwG1e/uTRSM/kU1koeTiRXnliLp60=";
      }
      {
        id = "lodbfhdipoipcjmlebjbgmmgekckhpfb";
        hash = "sha256-GwjWVw9G7lQc5Sm232YOmF4nc+OzbnnJX02Cll6SlRU=";
      }
    ];

    extraPolicies = {
      PasswordManagerEnabled = false;
      preferences = {
        browser.show_home_button = true;
      };
    };
  };
}
