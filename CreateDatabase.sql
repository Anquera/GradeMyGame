CREATE DATABASE GradeMyGame;
USE GradeMyGame;

-- Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Track user creation time
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Track user last update time
);

-- Games Table
CREATE TABLE games (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Track game creation time
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Track game last update time
);

-- Reviews Table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT,
    user_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 100),  -- Rating between 1 and 100
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Track review creation time
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  -- Track review last update time
    FOREIGN KEY (game_id) REFERENCES games(game_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    INDEX (game_id),  -- Index for faster queries on game reviews
    INDEX (user_id)  -- Index for faster queries on user reviews
);
