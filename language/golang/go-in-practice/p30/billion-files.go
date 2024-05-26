// создание 1_000_000 файлов
// отложенный вызов

package main

import "os"

type File struct {
    // contains filtered or unexported fields
}

// создать 1-файл в директории
func createFile() bool {
	os.Create(file string) ("File.txt", err)
	return true
}

func main() {
createFile()
}
