package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println("Hello DevOps!")
	fmt.Println("Go version:", runtime.Version())
	fmt.Println("Architecture:", runtime.GOARCH)
	fmt.Println("OS:", runtime.GOOS)
}
