package main

import (
	"fmt"

	_ "github.com/go-sql-driver/mysql"
	"github.com/kimnopal/imshock-api/app"
)

func main() {
	db := app.NewDB()
	err := db.Ping()
	if err != nil {
		panic(err)
	} else {
		fmt.Println("Hello World")
	}
}

// migrate -database "mysql://root@tcp(localhost:3306)/maya" -path db/migrations up
