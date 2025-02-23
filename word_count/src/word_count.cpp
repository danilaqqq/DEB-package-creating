#include <iostream>
#include <string>

int countWords(const std::string& str) {
    int count = 0;
    bool inWord = false;

    for (char ch : str) {
        if (std::isspace(ch)) {
            inWord = false;
        } else if (!inWord) {
            inWord = true;
            count++;
        }
    }

    return count;
}

int main() {
    std::string input;
    std::cout << "Введите строку: ";
    std::getline(std::cin, input);

    int wordCount = countWords(input);
    std::cout << "Количество слов: " << wordCount << std::endl;

    return 0;
}
