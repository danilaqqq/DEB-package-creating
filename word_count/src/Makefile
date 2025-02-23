CC = g++
CFLAGS = -Wall -Wextra -O2
TARGET = word_count

all: check_compiler $(TARGET)

check_compiler:
	@which $(CC) > /dev/null || (echo "Ошибка: Компилятор $(CC) не найден! Установите g++" && exit 1)

$(TARGET): word_count.cpp
	$(CC) $(CFLAGS) -o $(TARGET) word_count.cpp

clean:
	rm -f $(TARGET)

install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 $(TARGET) $(DESTDIR)/usr/bin/
