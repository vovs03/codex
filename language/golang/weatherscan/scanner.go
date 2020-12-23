// Date: 2020-12-23
// Coder: Vladimir Pavlychev

// Package weatherscan is Wheather scanner using API meteoservice.ru
package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	// https://golang.org/pkg/net/http/#Response
	// doc: https://www.meteoservice.ru/content/export
	response, err := http.Get(
		"https://www.meteoservice.ru/exportgismeteo?point=7421")
	if err != nil {
		log.Fatal(err)
	}
	defer response.Body.Close()

	// https://golang.org/pkg/io/ioutil/#ReadAll
	byteValue, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(string(byteValue))
}
