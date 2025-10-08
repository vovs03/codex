#include <stdio.h>
// https://stepik.org/lesson/13977/step/9?unit=30906
char line[] = "_________________________________________________";
char star[] = "********_________________________________________";
// LESS1:A7df892WDDFNeogoodjob
// 🚢 Max Tor 🦀
int send_line() {
    puts(line);
    return 0;
}

int send_star() {
    puts(star);
    return 0;
}

int main(void)
{
    send_line();

    int i;
    for (i = 1; i < 7; i++)
        send_star(); // Six stars-lines

    for (i = 1; i < 7; i++)
        send_line(); // Six lines
}
