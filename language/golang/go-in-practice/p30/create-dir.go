package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	f, err := os.CreateTemp("i1", "example")
	fmt.Print("File was created")
	if err != nil {
		log.Fatal(err)
	}
	//defer os.Remove(f.Name()) // clean up

	if _, err := f.Write([]byte("content")); err != nil {
		log.Fatal(err)
	}
	if err := f.Close(); err != nil {
		log.Fatal(err)
	}
}
