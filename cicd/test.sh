#!/bin/bash
set -e

echo "Запуск тестов..."

# Тест 1
input1="Hello world!"
expected1=2
output1=$(echo "$input1" | /usr/bin/word_count)

if [[ "$output1" -eq "$expected1" ]]; then
    echo "Тест 1 пройден: '$input1' → $output1 слов"
else
    echo "Ошибка в тесте 1: ожидалось $expected1, получено $output1"
    exit 1
fi

# Тест 2
input2="ya lublu ychitsya, blin klass"
expected2=5
output2=$(echo "$input2" | /usr/bin/word_count)

if [[ "$output2" -eq "$expected2" ]]; then
    echo "Тест 2 пройден: '$input2' → $output2 слов"
else
    echo "Ошибка в тесте 2: ожидалось $expected2, получено $output2"
    exit 1
fi

echo "Все тесты успешно пройдены!"
