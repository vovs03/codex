#include <stdio.h>
#define NONBLANK 'a'
/* Заменить строку пробелов единственным*/
char main() {
	int c, lastc;
	lastc = NONBLANK;
	while ((c = getchar()) != EOF) {
		if (c != ' ')
			putchar(c);
		if (c == ' ')
			if (lastc != ' ')
				putchar(c);
		lastc = c;
	}
}
