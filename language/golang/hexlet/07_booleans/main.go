package main

import "fmt"

func IsValid(str1, str2 string) bool {
	var1 := (str1 == str2)
	return var1
}

func IsLenMore(str1, str2 string) bool {
	var2 := (str1 > str2)
	return var2
}

func main() {
	fmt.Println(IsValid("привет", "привет")) // true
	fmt.Println(IsLenMore("GosT", "GosU"))   // false
}
