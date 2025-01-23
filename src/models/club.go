package models

// 'Club' defines how data is represented in the API
// This is working as DTO (data transfer object) and also ORM's Entity
type Club struct {
	ID      uint   `json:"id" gorm:"primaryKey;autoIncrement;not null"`
	Name    string `json:"name" gorm:"type:varchar(100);not null"`
	Country string `json:"country" gorm:"type:varchar(100);not null"`
	Stadium string `json:"stadium" gorm:"type:varchar(100)"`
}
