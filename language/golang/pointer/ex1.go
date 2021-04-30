package main

import "fmt"

func square(x *float64) {
	*x = *x * *x
}
func main() {
	x, y := 1.5, 5.0
	square(&x)
	swap(&x, &y)
	// Вывод значений из переменных
	fmt.Println(x, y)

	swap(&x, &y)
	// Вывод адресов ячеек памяти (0xc0000180a0)
	fmt.Println(&x, &y)
}

// rotate 2 digits into 2 variables
func swap(x, y *float64) {
	var z = *x //2.25
	*x = *y    //5.0
	*y = z

}
