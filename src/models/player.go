package models

// 'Player' defines how data is represented in the API
// This is working as DTO (data transfer object) and also ORM's Entity
type Player struct {
	ID          uint   `json:"id" gorm:"primaryKey;autoIncrement;not null"`
	Name        string `json:"name" gorm:"type:varchar(100);not null"`
	Age         int    `json:"age" gorm:"not null"`
	Nationality string `json:"nationality" gorm:"type:varchar(100)"`
}
