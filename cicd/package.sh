#!/bin/bash
set -e

echo "Создание .deb-пакета..."

dpkg-buildpackage -us -uc

echo ".deb-пакет создан"

