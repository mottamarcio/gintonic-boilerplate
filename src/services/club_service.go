package services

import (
	"fmt"
	"net/http"

	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"github.com/mottamarcio/gintonic-boilerplate/src/repositories"
)

func GetClubs() (int, []models.Club, error) {
	clubs, err := repositories.GetClubs()
	if err != nil {
		return http.StatusInternalServerError, nil, err
	}

	if len(clubs) == 0 {
		return http.StatusNotFound, nil, fmt.Errorf("Clubs not found.")
	}

	return http.StatusOK, clubs, nil
}

func GetClubById(clubId string) (int, models.Club, error) {
	club, err := repositories.GetClubById(clubId)
	if err != nil {
		return http.StatusNotFound, models.Club{}, fmt.Errorf("Club not found.")
	}

	return http.StatusOK, club, nil
}

func CreateClub(club models.Club) (int, error) {
	err := repositories.CreateClub(club)
	if err != nil {
		return http.StatusInternalServerError, err
	}

	return http.StatusOK, nil
}

func UpdateClubById(clubId string, updatedClub models.Club) (int, error) {
	err := repositories.UpdateClubById(clubId, updatedClub)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil
}

func DeleteClubById(clubId string) (int, error) {
	err := repositories.DeleteClubById(clubId)
	if err != nil {
		return http.StatusNotFound, err
	}

	return http.StatusOK, nil

}
