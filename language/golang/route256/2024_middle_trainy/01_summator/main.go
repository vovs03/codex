package main

// Example for: https://techpoint.ozon.ru/contest/43/task/235?tab=conditions

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	// Рекомендуется использовать быстрый (буферизованный) ввод и вывод
	var in *bufio.Reader
	var out *bufio.Writer
	in = bufio.NewReader(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var a, b int
	// a != typeof("nul")
	fmt.Fscan(in, &a, &b)
	fmt.Fprint(out, a+b)
}
