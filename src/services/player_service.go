package services

import (
	"fmt"
	"net/http"

	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/repositories"
)

func GetPlayers() (int, []models.Player, error) {
	players, err := repositories.GetPlayers()
	if err != nil {
		return http.StatusInternalServerError, nil, err
	}

	if len(players) == 0 {
		return http.StatusNotFound, nil, fmt.Errorf("Players not found.")
	}

	return http.StatusOK, players, nil
}

func GetPlayerById(playerId string) (int, models.Player, error) {
	player, err := repositories.GetPlayerById(playerId)
	if err != nil {
		return http.StatusNotFound, models.Player{}, fmt.Errorf("Player not found.")
	}

	return http.StatusOK, player, nil
}

func CreatePlayer(player models.Player) (int, error) {
	err := repositories.CreatePlayer(player)
	if err != nil {
		return http.StatusInternalServerError, err
	}

	return http.StatusOK, nil
}

func UpdatePlayerById(playerId string, updatedPlayer models.Player) (int, error) {
	err := repositories.UpdatePlayerById(playerId, updatedPlayer)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil
}

func DeletePlayerById(playerId string) (int, error) {
	err := repositories.DeletePlayerById(playerId)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil

}
