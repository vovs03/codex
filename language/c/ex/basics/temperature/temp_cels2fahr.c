#include <stdio.h>

/* Печать таблицы температур
   по Цельсию и Фаренгейту
   для celsius = -60, -50, ..., 110;
 * Вариант с плавающей точкой   */

main() {
	float fahr, celsius;
	int lower, upper, step;

	lower = -60;   /* нижняя граница */
	upper = 120; /* верхняя */
	step = 10;   /* шаг */

	celsius = lower;
	printf("Cel | Fahr\n");
	printf("--- | -----\n");
	while (celsius <= upper ) {
		fahr = (5.0 / 9.0 ) * (celsius + 32.0);
		printf("%6.1f %3.0f\n", celsius, fahr);
		celsius = celsius + step;
	}
}

