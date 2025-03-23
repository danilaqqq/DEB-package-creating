#!/bin/bash
set -e

echo "Создание .deb-пакета..."

dpkg-buildpackage -us -uc

echo ".deb-пакет создан"

echo "Перенос .deb файла в ./debian..."
mv ../*.deb ./debian/
