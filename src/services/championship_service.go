package services

import (
	"fmt"
	"net/http"

	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/repositories"
)

func GetChampionships() (int, []models.Championship, error) {
	championships, err := repositories.GetChampionships()
	if err != nil {
		return http.StatusInternalServerError, nil, err
	}

	if len(championships) == 0 {
		return http.StatusNotFound, nil, fmt.Errorf("Championships not found.")
	}

	return http.StatusOK, championships, nil
}

func GetChampionshipById(championshipId string) (int, models.Championship, error) {
	championship, err := repositories.GetChampionshipById(championshipId)
	if err != nil {
		return http.StatusNotFound, models.Championship{}, fmt.Errorf("Championship not found.")
	}

	return http.StatusOK, championship, nil
}

func CreateChampionship(championship models.Championship) (int, error) {
	err := repositories.CreateChampionship(championship)
	if err != nil {
		return http.StatusInternalServerError, err
	}

	return http.StatusOK, nil
}

func UpdateChampionshipById(championshipId string, updatedChampionship models.Championship) (int, error) {
	err := repositories.UpdateChampionshipById(championshipId, updatedChampionship)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil
}

func DeleteChampionshipById(championshipId string) (int, error) {
	err := repositories.DeleteChampionshipById(championshipId)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil

}
