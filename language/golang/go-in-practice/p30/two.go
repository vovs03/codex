package main

import "fmt"

var Co = counter

func counter() {
	for i := 6; i < 11; i++ {
		fmt.Println(i)
	}

}

func textPrint(Co) {

}

func main() {
	counter()

}
