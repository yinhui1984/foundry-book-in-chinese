package main

import (
	"github.com/pkg/browser"
	"log"
	"net/http"
)

func main() {
	port := ":3099"
	go browser.OpenURL("http://localhost" + port)

	log.Println("start file server on http://localhost" + port)
	http.ListenAndServe(port, http.FileServer(http.Dir("../book/i18n/zh")))

}
