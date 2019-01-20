package main

import (
 "fmt"
 "net/http"
 "os"
)

func main() {
 var PORT string
 if PORT = os.Getenv("PORT"); PORT == "" {
  PORT = "3001"
 }

 http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
  fmt.Fprint(w, "Go_Docker");
  fmt.Fprintf(w, "PORT :%s\n, Hello World from path: %s\n", PORT, r.URL.Path)
 })

 http.ListenAndServe(":" + PORT, nil)
}
