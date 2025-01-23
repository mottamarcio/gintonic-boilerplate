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

	clubRoutes := router.Group("/clubs")
	{
		clubRoutes.GET("/", controllers.GetClubs)
		clubRoutes.GET("/:id", controllers.GetClubById)
		clubRoutes.POST("/", controllers.CreateClub)
		clubRoutes.PATCH("/:id", controllers.UpdateClubById)
		clubRoutes.DELETE("/:id", controllers.DeleteClubById)
	}

	championshipRoutes := router.Group("/championships")
	{
		championshipRoutes.GET("/", controllers.GetChampionships)
		championshipRoutes.GET("/:id", controllers.GetChampionshipById)
		championshipRoutes.POST("/", controllers.CreateChampionship)
		championshipRoutes.PATCH("/:id", controllers.UpdateChampionshipById)
		championshipRoutes.DELETE("/:id", controllers.DeleteChampionshipById)
	}

}
