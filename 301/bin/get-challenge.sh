#!/bin/bash

echo "Descargando: Code Challenge $1"


# Detectar sistema operativo
if [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
  # Estamos en Git Bash en Windows
  echo "- Windows -"
  CURL_CMD=`command -v curl`
else
  # Asumimos que estamos en Linux
  echo "- Mac o Linux -"
  CURL_CMD=`which curl`
fi

$CURL_CMD -s https://entertechschool.github.io/ncode-301-guide/code-challenges/cc-$1.test.js > ./code-challenges/challenges-$1.test.js