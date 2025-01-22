package main

import (
	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/config"
	"github.com/mottamarcio/gintonic-boilerplate/src/routes"
)

func main() {
	// Create database connections and tables using auto-migrate
	config.ConnectDatabase()

	r := gin.Default()

	routes.SetupRoutes(r)

	r.Run(":5000") // listen and serve on 0.0.0.0:5000

}
