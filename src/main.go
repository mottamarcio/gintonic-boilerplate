package main

import (
	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/repositories"
	"github.com/mottamarcio/gintonic-boilerplate/src/routes"
)

func init() {
	// Create database connections and tables using auto-migrate
	repositories.InitDatabase()
}

func main() {
	r := gin.Default()
	routes.SetupRoutes(r)
	r.Run(":5000") // listen and serve on 0.0.0.0:5000
}
