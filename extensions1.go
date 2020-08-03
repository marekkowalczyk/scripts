package main

import(
	"os"
	"fmt"
	"io/ioutil"
	"strings"
	"sort"
)

func main() {
	wd, err := os.Getwd()
	if err != nil {
		msg := fmt.Sprintf("An error occured getting the current working directory.\n%s", err)
		fmt.Println(msg)
		os.Exit(1)
	}

	dir, err := ioutil.ReadDir(wd)
	if err != nil {
		msg := fmt.Sprintf("An error occured reading the current working directory.\n%s", err)
		fmt.Println(msg)
		os.Exit(1)
	}

	var m = make(map[string][]string)
	for _, file := range dir {
		if !file.IsDir() {
			fileName := file.Name()
			ext := strings.Split(fileName, ".")
			if len(ext) > 1 {
				m[ext[len(ext)-1]] = append(m[ext[len(ext)-1]], fileName)
			}
			if len(ext) == 1 {
				m["no-ext"] = append(m["no-ext"], fileName)
			}
			fmt.Println(ext[0])
			fmt.Println(ext[1])
			sort.Strings(m[ext[len(ext)-1]])
		}
	}
}
