install_dependencies() {
    if [[ ! $(command -v curl) ]] then
        sudo apt-get install curl
    fi

    if [[ ! $(command -v unzip) ]] then
        sudo apt-get install unzip
    fi

    if [[ ! $(command -v oh-my-posh) ]] then
        mkdir -p ~/.local/bin
        curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
    fi
}
