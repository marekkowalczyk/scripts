package main

import "fmt"
import "os"

func main() {

  if _, err := os.Stat("file-exists2.file"); os.IsNotExist(err) {
    fmt.Printf("File does not exist\n");  
  } 
  // continue program
  
}