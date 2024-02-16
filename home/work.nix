{ pkgs, ... }: {
    imports = [ ./shared.nix ];
    home.username = "james.chen-smith";
    home.homeDirectory = "/Users/james.chen-smith";
    home.packages = with pkgs; [
        (with dotnetCorePackages; combinePackages [
            sdk_6_0
            sdk_8_0
        ])
    ];
}
