wsl -e bash -c "
    sudo apt-get update && \
    sudo apt-get install -y dos2unix && \
    sudo dos2unix ./install.sh && \
    sudo dos2unix ./update.sh && \
    sudo dos2unix .env.local
