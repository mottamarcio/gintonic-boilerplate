package services

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/repositories"
)

func GetPlayers() ([]models.Player, error) {
	return repositories.GetPlayers()
}

func GetPlayerById() {

}

func CreatePlayer() {

}

func UpdatePlayerById() {

}

func DeletePlayerById() {

}
