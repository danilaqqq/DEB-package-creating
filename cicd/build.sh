#!/bin/bash
set -e
echo "Сборка проекта..."
cd ./src
make
mkdir -p ../build
cp word_count ../build/
echo "Проект собран"
