package main

import (
	"log"
	"os"
)

func renameFile(oldName string, newName string){

	err := os.Rename(oldName, newName)
	if err != nil {
		log.Fatal(err)
	}

}

func main() {
	oldName := "test.txt"
	newName := "testing.txt"

	renameFile(oldName, newName)

}
