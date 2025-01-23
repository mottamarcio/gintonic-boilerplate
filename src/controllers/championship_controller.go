package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/services"
)

func GetChampionships(c *gin.Context) {
	statusCode, httpResponse, err := services.GetChampionships()
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func GetChampionshipById(c *gin.Context) {
	championshipId := c.Param("id")
	statusCode, httpResponse, err := services.GetChampionshipById(championshipId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func CreateChampionship(c *gin.Context) {
	var championship models.Championship
	if err := c.ShouldBindJSON(&championship); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	statusCode, err := services.CreateChampionship(championship)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Championship created successfully."})
}

func UpdateChampionshipById(c *gin.Context) {
	championshipId := c.Param("id")
	var updatedChampionship models.Championship
	if err := c.ShouldBindJSON(&updatedChampionship); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	statusCode, err := services.UpdateChampionshipById(championshipId, updatedChampionship)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Championship updated successfully."})
}

func DeleteChampionshipById(c *gin.Context) {
	championshipId := c.Param("id")
	statusCode, err := services.DeleteChampionshipById(championshipId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Championship removed successfully."})
}
