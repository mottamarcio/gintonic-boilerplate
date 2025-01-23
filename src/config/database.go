package config

import (
	"log"
	"os"
	"sync"

	"github.com/joho/godotenv"
	"github.com/mottamarcio/gintonic-boilerplate/src/models"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var (
	db   *gorm.DB
	once sync.Once
)

func ConnectDatabase() *gorm.DB {
	once.Do(func() {
		// Load variables from .env file
		err := godotenv.Load("../.env")
		if err != nil {
			log.Fatalf("Error loading .env file: %v", err)
		}

		// Building the DSN from environment variables
		dsn := os.Getenv("DB_USER") + ":" +
			os.Getenv("DB_PASSWORD") + "@tcp(" +
			os.Getenv("DB_HOST") + ":" +
			os.Getenv("DB_PORT") + ")/" +
			os.Getenv("DB_NAME") + "?charset=utf8mb4&parseTime=True&loc=Local"

		db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
		if err != nil {
			log.Fatalf("Failed to connect to database: %v", err)
		}

		// Auto-migrate
		err = db.AutoMigrate(&models.Player{}, &models.Club{}, &models.Championship{})
		if err != nil {
			log.Fatalf("Failed to migrate database: %v", err)
		}
	})

	return db
}
