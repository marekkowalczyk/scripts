package main

import (
	"fmt"
	"path"
	"strings"
)

/*func FilenameWithoutExtension(fn string) string {
	return strings.TrimSuffix(fn, path.Ext(fn))
}*/

func OnlyExtension(filename string) (extension string) {

	extension = strings.TrimLeft(path.Ext(filename), ".")
	return

}

func FilenameWithoutExtension(filename string) (name string) {


	name = strings.TrimRight(filename, "."+OnlyExtension(filename))
	return

}


func main() {
	const filename string = "hello.blah"
	var name string = FilenameWithoutExtension(filename)
	var extension string = OnlyExtension(filename)
	
	fmt.Println(name)
	fmt.Println(extension)

}
