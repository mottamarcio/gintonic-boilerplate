package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/services"
)

func GetClubs(c *gin.Context) {
	statusCode, httpResponse, err := services.GetClubs()
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func GetClubById(c *gin.Context) {
	clubId := c.Param("id")
	statusCode, httpResponse, err := services.GetClubById(clubId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}
	c.JSON(statusCode, httpResponse)
}

func CreateClub(c *gin.Context) {
	var club models.Club
	if err := c.ShouldBindJSON(&club); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	statusCode, err := services.CreateClub(club)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Club created successfully."})
}

func UpdateClubById(c *gin.Context) {
	clubId := c.Param("id")
	var updatedClub models.Club
	if err := c.ShouldBindJSON(&updatedClub); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	statusCode, err := services.UpdateClubById(clubId, updatedClub)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Club updated successfully."})
}

func DeleteClubById(c *gin.Context) {
	clubId := c.Param("id")
	statusCode, err := services.DeleteClubById(clubId)
	if err != nil {
		c.JSON(statusCode, gin.H{"error": err.Error()})
		return
	}

	c.JSON(statusCode, gin.H{"message": "Club removed successfully."})
}
