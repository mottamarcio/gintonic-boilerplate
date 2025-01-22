package repositories

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/config"
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
)

func GetPlayers() ([]models.Player, error) {
	db := config.ConnectDatabase()
	var players []models.Player
	err := db.Find(&players).Error

	return players, err
}

func GetPlayerById() {

}

func CreatePlayer() {

}

func UpdatePlayerById() {

}

func DeletePlayerById() {

}
