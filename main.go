package main

import (
  "fmt"
  "time"
)

func main() {
  for {
    fmt.Println("Full Cycle Rocks!!")
    time.Sleep(time.Second * 10)
  }
}