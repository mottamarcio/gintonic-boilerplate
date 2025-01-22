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

func GetPlayerById(playerId string) (models.Player, error) {
	db := config.ConnectDatabase()
	var player models.Player
	err := db.First(&player, playerId).Error

	return player, err
}

func CreatePlayer(player models.Player) error {
	db := config.ConnectDatabase()
	if err := db.Create(&player).Error; err != nil {
		return err
	}

	return nil
}

func UpdatePlayerById() {

}

func DeletePlayerById(playerId string) error {
	db := config.ConnectDatabase()
	var player models.Player
	// Find for player by ID
	if err := db.First(&player, playerId).Error; err != nil {
		return err
	}

	// Delete player
	if err := db.Delete(&player).Error; err != nil {
		return err
	}

	return nil
}
