CREATE DATABASE GradeMyGame;
USE GradeMyGame;

-- Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Games Table
CREATE TABLE games (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Reviews Table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT,
    user_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 100),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (game_id) REFERENCES games(game_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    INDEX (game_id),
    INDEX (user_id)
);

-- Game Media Table (Trailers, Images, etc.)
CREATE TABLE game_media (
    media_id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT,
    media_url VARCHAR(255) NOT NULL,   -- URL of the media (e.g., YouTube link, image URL)
    media_type ENUM('trailer', 'image', 'video', 'screenshot', 'gif') NOT NULL,  -- Type of media
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (game_id) REFERENCES games(game_id)
);
