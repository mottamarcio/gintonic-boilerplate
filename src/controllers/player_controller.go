package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	service "github.com/mottamarcio/gintonic-boilerplate/src/services"
)

func GetServerStatus(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "Welcome to Gin Tonic Boilerplate",
	})
}

func GetPlayers(c *gin.Context) {
	statusCode, httpResponse, err := service.GetPlayers()
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func GetPlayerById(c *gin.Context) {

}

func CreatePlayer(c *gin.Context) {

}

func UpdatePlayerById(c *gin.Context) {

}

func DeletePlayerById(c *gin.Context) {

}
