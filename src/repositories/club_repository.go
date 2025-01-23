package repositories

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
)

func GetClubs() ([]models.Club, error) {
	var clubs []models.Club
	err := db.Find(&clubs).Error

	return clubs, err
}

func GetClubById(ClubId string) (models.Club, error) {
	var club models.Club
	err := db.First(&club, ClubId).Error

	return club, err
}

func CreateClub(club models.Club) error {
	if err := db.Create(&club).Error; err != nil {
		return err
	}

	return nil
}

func UpdateClubById(clubId string, updatedClub models.Club) error {
	club, err := GetClubById(clubId)
	if err != nil {
		return err
	}

	// Updates Club fields with the provided data
	club.Name = updatedClub.Name
	club.Country = updatedClub.Country
	club.Stadium = updatedClub.Stadium

	// Update Club
	if err := db.Save(&club).Error; err != nil {
		return err
	}

	return nil
}

func DeleteClubById(clubId string) error {
	Club, err := GetClubById(clubId)
	if err != nil {
		return err
	}

	// Delete Club
	if err := db.Delete(&Club).Error; err != nil {
		return err
	}

	return nil
}
