package main

import (
    "net/http"
    "fmt"
)

func main() {
    http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(rw, "Hello, world!")
    })

    http.ListenAndServe(":80", nil)
}
