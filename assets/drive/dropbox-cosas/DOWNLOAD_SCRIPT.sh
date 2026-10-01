#!/bin/bash
# Script para descargar archivos de Dropbox /cosas
# Requiere: dbxcli instalado
# Instalación: https://github.com/dropbox/dbxcli

DROPBOX_PATH="/cosas"
LOCAL_DIR="./dropbox-cosas"

mkdir -p "$LOCAL_DIR"

# Descargar toda la carpeta
echo "Descargando /cosas desde Dropbox..."
dbxcli get "$DROPBOX_PATH" "$LOCAL_DIR"

echo "✓ Descarga completada"
ls -lh "$LOCAL_DIR"
