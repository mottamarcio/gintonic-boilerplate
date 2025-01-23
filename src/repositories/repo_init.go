package repositories

import (
	"github.com/mottamarcio/gintonic-boilerplate/src/config"
	"gorm.io/gorm"
)

var db *gorm.DB

func InitDatabase() {
	db = config.ConnectDatabase()
}
