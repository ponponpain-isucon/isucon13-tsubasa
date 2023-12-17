package main

import (
	"crypto/sha256"
	"fmt"
	"io/ioutil"
)

func main() {
	// NoImage.jpg の Sha-256 ハッシュ値を計算する
	filePath := "NoImage.jpg"
	fileData, err := ioutil.ReadFile(filePath)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	hash := sha256.Sum256(fileData)
	fmt.Printf("%x", hash)
}
