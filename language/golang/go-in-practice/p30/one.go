// https://play.golang.org/p/zNjcz1yoyob

package main

import (
	"fmt"
	"os"
	"strconv"
	"time"
)

func main() {

	for i := 1; i < 6; i++ {
		c := &i
		//fmt.Println(i)

		//fname := `f.txt` имя файла чтобы к нему подключить счётчик
		//cFile, _ := os.Create(fname+i, _)
		//cFile, _ := os.Create(`f.txt`)

		FileName := "f" + strconv.Itoa(i) + ".txt"
		cFile, _ := os.Create(FileName)

		fmt.Println(i, "file was created:", c, *c)
		defer cFile.Close()

		// прерывание счётчика на 1 милисекунду * N
		time.Sleep(time.Millisecond * 10)

		// проверка удаления файла - таймер для отложенности
		time.Sleep(time.Millisecond * 800)
		// удаление файла с указанным именем
		//defer os.Remove(`f.txt`)
		defer os.Remove(FileName)
	}

	fmt.Println("count was done")
}

// не могу понять как к имени файла добавлять счётчик(число, чтобы на выходе были файлы f1.txt .. f5.txt
