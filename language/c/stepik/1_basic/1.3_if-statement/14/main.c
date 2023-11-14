#include <stdio.h>

void fizzbuzz(int num) {
    if (num <= 0) {
        printf("no\n");
    } 
    else if (num % 3 == 0 && num % 5 == 0) {
        printf("fizzbuzz\n");
    }
    else if (num % 3 == 0) {
        printf("fizz\n");
    }
    else if (num % 5 == 0) {
        printf("buzz\n");
    }
}

int main() {
    fizzbuzz(3); // выводит fizz
    fizzbuzz(5); // выводит buzz
    fizzbuzz(15); // выводит fizzbuzz
    fizzbuzz(2); // ничего не выводит
    fizzbuzz(0); // выводит no
    return 0;
}