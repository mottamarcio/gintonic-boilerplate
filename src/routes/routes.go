package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/controllers"
)

func SetupRoutes(router *gin.Engine) {

	// endpoint to check server status
	router.GET("/ping", controllers.GetServerStatus)

	playerRoutes := router.Group("/players")
	{
		playerRoutes.GET("/", controllers.GetPlayers)
		playerRoutes.GET("/:id", controllers.GetPlayerById)
		playerRoutes.POST("/", controllers.CreatePlayer)
		playerRoutes.PATCH("/:id", controllers.UpdatePlayerById)
		playerRoutes.DELETE("/:id", controllers.DeletePlayerById)
	}

}
