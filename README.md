# GradeMyGame


## Proposed Architecture
GradeMyGame will consist of an HTML, CSS, and JavaScript front end with a Flask back end. A SQL database will be used to store user-generated content, game reviews, and community interactions.

## Database Schema (Initial)
- **Users**: 
  - `user_id`, `email`
  
- **Games**: 
  - `game_id`, `title`, `description`
  
- **Reviews**: 
  - `review_id`, `game_id`, `user_id`, `rating`, `comment`

## Routes & HTTP Methods (Initial)
- **Home Page** -- GET
- **Search Functionality** -- POST, GET
- **Game Details Page** -- GET
- **Submit Review** -- POST
- **User Profile Login** -- POST, GET
- **User Rating Scoreboard** -- GET
- **Comment Section** -- POST, GET

## Routes & Webpage Functionality (Initial)
- **Home Page**: Displays featured games and navigation.
- **Search Functionality**: Allows users to search for games.
- **Game Details Page**: Shows game info and user reviews.
- **Submit Review**: Users can submit ratings and comments.
- **User Profile Login**: Manages user authentication via email.
- **User Rating Scoreboard**: Displays aggregated ratings.
- **Comment Section**: Lists reviews and user comments.
