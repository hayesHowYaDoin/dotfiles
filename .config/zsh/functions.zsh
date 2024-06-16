install_dependencies() {
    # Starship
    if [[ ! $(command -v starship) ]]; then
        mkdir -p ~/.local/bin
        curl -sS https://starship.rs/install.sh | sh -s -- -y -b ~/.local/bin
    fi
}