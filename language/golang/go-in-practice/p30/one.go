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

		FileName := "f" + strconv.Itoa(i) + ".txt"
		cFile, _ := os.Create(FileName)

		fmt.Println(i, "file was created:", c, *c)
		defer cFile.Close()

		// проверка удаления файла - таймер для отложенности
		time.Sleep(time.Millisecond * 100)
		//defer os.Remove(FileName)
	}

	fmt.Println("count was done")
}

// не могу понять как к имени файла добавлять счётчик(число, чтобы на выходе были файлы f1.txt .. f5.txt
