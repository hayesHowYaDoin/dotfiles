install_dependencies() {
    if [[ ! $(command -v curl) ]] then
        sudo apt-get install curl
    fi

    if [[ ! $(command -v oh-my-posh) ]] then
        curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
    fi
}
