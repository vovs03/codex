package main

// Package main for input-output data: name & age

import (
	"fmt"
)

func main() {
	var (
		name string
		age  int
	)

	colorReset := "\033[0m"

	//	colorRed := "\033[31m"
	//	colorGreen := "\033[32m"
	//	colorYellow := "\033[33m"
	//	colorBlue := "\033[34m"
	//	colorPurple := "\033[35m"
	colorCyan := "\033[36m"
	//	colorWhite := "\033[37m"

	fmt.Print("Input ", string(colorCyan), "y", string(colorReset), "our name \n")
	fmt.Scan(&name)
	fmt.Print("Your age is...\n")
	fmt.Scan(&age)
	fmt.Print("------------------ \n")
	fmt.Print(name, " ", age, "\n")
}
