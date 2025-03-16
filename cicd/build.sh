#!/bin/bash
set -e
echo "Сборка проекта..."
cd ./src
make
cp word_count /usr/bin/
echo "Проект собран"
