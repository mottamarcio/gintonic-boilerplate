package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/services"
)

func GetServerStatus(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{"message": "Welcome to Gin Tonic Boilerplate."})
}

func GetPlayers(c *gin.Context) {
	statusCode, httpResponse, err := services.GetPlayers()
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func GetPlayerById(c *gin.Context) {
	playerId := c.Param("id")
	statusCode, httpResponse, err := services.GetPlayerById(playerId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func CreatePlayer(c *gin.Context) {
	var player models.Player
	if err := c.ShouldBindJSON(&player); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	statusCode, err := services.CreatePlayer(player)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Player created successfully."})
}

func UpdatePlayerById(c *gin.Context) {

}

func DeletePlayerById(c *gin.Context) {
	playerId := c.Param("id")
	statusCode, err := services.DeletePlayerById(playerId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Player removed successfully."})
}
