#!/bin/bash
set -e
echo "Сборка проекта..."
make
cp src/word_count /usr/bin/
echo "Проект собран"
