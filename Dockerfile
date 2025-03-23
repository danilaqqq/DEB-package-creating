FROM ubuntu:22.04

# Обновлеие и устанавка необходимых пакетов
RUN apt update && apt install -y \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Копирование deb-пакет внутрь контейнера
COPY word-count.deb /tmp/word-count.deb

# Устанавка deb-пакет
RUN apt update && apt install -y /tmp/word-count.deb

# Запуск программы
CMD ["/usr/bin/word_count", "--test"]
