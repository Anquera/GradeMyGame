# GradeMyGame
Final Project for CSC321

Overview: The Game Ratings and Reviews web application is a community-driven platform that allows users to submit reviews, rate games, and engage with other gamers. The application is built using Flask for backend and  HTML, CSS, and JavaScript for the frontend. The database schema is designed to store user data, game information, and community-generated content.

Architecture

Backend: Flask
Database: SQL (SQLite or PostgreSQL recommended)

Database Schema
 Users Table
 user_id: INTEGER, Primary Key
username: VARCHAR(50), Unique
password: VARCHAR(100) (hashed)
email: VARCHAR(100), Unique
profile_picture: VARCHAR(255)
 Games Table
game_id: INTEGER, Primary Key
 title: VARCHAR(100)
description: TEXT
release_date: DATE
trailer_link: VARCHAR(255)
image_url: VARCHAR(255)

 Reviews Table
review_id: INTEGER, Primary Key
user_id: INTEGER, Foreign Key (Users)
game_id: INTEGER, Foreign Key (Games)
rating: INTEGER (1-5)
comment: TEXT
timestamp: DATETIME
 Polls Table
poll_id: INTEGER, Primary Key
question: VARCHAR(255)
options: JSON
votes: JSON
Favorites Table
 favorite_id: INTEGER, Primary Key
user_id: INTEGER, Foreign Key (Users)
 game_id: INTEGER, Foreign Key (Games)

Routes and HTTP Methods
User Authentication
POST /register: Register a new user.
POST /login: Authenticate user and create a session.
GET /logout: End user session.

Game Management
GET /games: Retrieve a list of all games.
GET /games/<game_id>: Get details of a specific game.
POST /games: Add a new game (admin only).

Review Management
POST /reviews: Submit a new review for a game.
GET /reviews/<game_id>: Retrieve all reviews for a specific game.

Poll Management
GET /polls: Retrieve active polls.
POST /polls: Create a new poll.

Favorites Management
POST /favorites: Add a game to user's favorites.
DELETE /favorites/<favorite_id>: Remove a game from favorites.

Interactions Between Routes and Functionality
User Registration/Login: Users can create accounts and log in to personalize their experience and manage their profiles.
Game Ratings and Reviews: Users can submit reviews and ratings for games, which are stored in the database and displayed on the game details page.
Polls and Community Engagement: The polls feature allows users to engage with the community by sharing their opinions on gaming topics.
Favorites List: Users can maintain a favorites list for easy access to their preferred games.

Frontend Functionality
Search Functionality: Users can quickly find games using keywords and filters with AJAX for dynamic updates.
User Ratings Scoreboard: Displays a bar graph of ratings to provide a visual summary of user feedback.
