package main

import (
	"fmt"
	"log"
	"os"
	"time"
)

//
type zFile struct {
	name    string
	counter int16
}

// Функция счётчик, вызываемая из функции `main`
func count() {
	for i := 1; i < 11; i++ {
		fmt.Println(i)
		cFile, _ := os.Create(`file#{i}.txt`)
		defer cFile.Close()
		//fmt.Println("--")

		// прерывание счётчика на 1 милисекунду
		time.Sleep(time.Millisecond * 1)
	}
	fmt.Println("count was done")
}

func main() {
	// Если count вызывать как подпрограмму, то не будет выводить в консоль значения переменной i
	count()

	emptyFile, err := os.Create("empty.txt")
	if err != nil {
		log.Fatal(err)
	}
	log.Println(emptyFile)
	emptyFile.Close()

	fmt.Println("main complete")
}
