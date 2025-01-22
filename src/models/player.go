package models

import "gorm.io/gorm"

// 'Player' defines how data is represented in the API
type Player struct {
	gorm.Model         // Add default fields: ID, CreatedAt, UpdatedAt, DeletedAt
	Name        string `json:"name" gorm:"type:varchar(100);not null"`
	Age         int    `json:"age" gorm:"not null"`
	Nationality string `json:"nationality" gorm:"type:varchar(100)"`
}
