package main

import (
	"fmt"
	"gopkg.in/iconv.v1"
)


func main() {
	

	cd, err := iconv.Open("ascii", "utf-8") // convert utf-8 to gbk
	if err != nil {
		fmt.Println("iconv.Open failed!")
		return
	}
	defer cd.Close()

	gbk := cd.ConvString("sdfasdfał")

	fmt.Println(gbk)
}
