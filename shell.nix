{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
   nativeBuildInputs = with pkgs; [cargo rustc rustfmt rust-analyzer];

RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";

}
