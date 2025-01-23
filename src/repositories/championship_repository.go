package repositories

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
)

func GetChampionships() ([]models.Championship, error) {
	var championships []models.Championship
	err := db.Find(&championships).Error

	return championships, err
}

func GetChampionshipById(championshipId string) (models.Championship, error) {
	var championship models.Championship
	err := db.First(&championship, championshipId).Error

	return championship, err
}

func CreateChampionship(championship models.Championship) error {
	if err := db.Create(&championship).Error; err != nil {
		return err
	}

	return nil
}

func UpdateChampionshipById(championshipId string, updatedChampionship models.Championship) error {
	championship, err := GetChampionshipById(championshipId)
	if err != nil {
		return err
	}

	// Updates Championship fields with the provided data
	championship.Name = updatedChampionship.Name

	// Update Championship
	if err := db.Save(&championship).Error; err != nil {
		return err
	}

	return nil
}

func DeleteChampionshipById(championshipId string) error {
	championship, err := GetChampionshipById(championshipId)
	if err != nil {
		return err
	}

	// Delete Championship
	if err := db.Delete(&championship).Error; err != nil {
		return err
	}

	return nil
}
