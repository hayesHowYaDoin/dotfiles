install_dependencies() {
    # Curl
    if [[ ! $(command -v curl) ]]; then
        apt-get install curl
    fi

    # Starship
    if [[ ! $(command -v starship) ]]; then
        mkdir -p ~/.local/bin
        curl -sS https://starship.rs/install.sh | sh -s -- -y -b ~/.local/bin
    fi
}