#!/bin/bash

# URL do repositório de releases do GE-Proton
REPO_URL="https://api.github.com/repos/GloriousEggroll/proton-ge-custom/releases/latest"

# Diretório onde o GE-Proton será baixado e extraído
DOWNLOAD_DIR="$HOME/.steam/steam/compatibilitytools.d"

# Função para verificar a versão mais recente
check_latest_version() {
    echo "Verificando a versão mais recente do GE-Proton..."
    LATEST_RELEASE=$(curl -s $REPO_URL | grep -oP '"tag_name": "\K(.*)(?=")')
    echo "Última versão disponível: $LATEST_RELEASE"
}

# Função para verificar se a versão já está instalada
is_version_installed() {
    if [ -d "$DOWNLOAD_DIR/$LATEST_RELEASE" ]; then
        echo "A versão $LATEST_RELEASE já está instalada."
        exit 0
    fi
}

# Função para baixar e extrair a versão mais recente
download_and_extract_latest_version() {
    echo "Baixando a versão $LATEST_RELEASE..."
    DOWNLOAD_URL=$(curl -s $REPO_URL | grep -oP '"browser_download_url": "\K(.*)(?=")' | grep ".tar.gz")
    mkdir -p $DOWNLOAD_DIR
    curl -L $DOWNLOAD_URL -o $DOWNLOAD_DIR/$LATEST_RELEASE.tar.gz
    echo "Extraindo a versão $LATEST_RELEASE..."
    tar -xzf $DOWNLOAD_DIR/$LATEST_RELEASE.tar.gz -C $DOWNLOAD_DIR
    rm $DOWNLOAD_DIR/$LATEST_RELEASE.tar.gz
    echo "Download e extração concluídos: $DOWNLOAD_DIR/$LATEST_RELEASE"
}

# Executa as funções
check_latest_version
is_version_installed
download_and_extract_latest_version
