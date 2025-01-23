package repositories

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
)

func GetPlayers() ([]models.Player, error) {
	var players []models.Player
	err := db.Find(&players).Error

	return players, err
}

func GetPlayerById(playerId string) (models.Player, error) {
	var player models.Player
	err := db.First(&player, playerId).Error

	return player, err
}

func CreatePlayer(player models.Player) error {
	if err := db.Create(&player).Error; err != nil {
		return err
	}

	return nil
}

func UpdatePlayerById(playerId string, updatedPlayer models.Player) error {
	player, err := GetPlayerById(playerId)
	if err != nil {
		return err
	}

	// Updates player fields with the provided data
	player.Name = updatedPlayer.Name
	player.Age = updatedPlayer.Age
	player.Nationality = updatedPlayer.Nationality

	// Update player
	if err := db.Save(&player).Error; err != nil {
		return err
	}

	return nil
}

func DeletePlayerById(playerId string) error {
	player, err := GetPlayerById(playerId)
	if err != nil {
		return err
	}

	// Delete player
	if err := db.Delete(&player).Error; err != nil {
		return err
	}

	return nil
}
