# Airbnb Clone Project
![image](https://github.com/yashvisharma1204/Airbnb/assets/137611141/80b8f9cd-eeaa-42ad-9e74-1fdeab316e1e)

This is a database project aiming to create a simplified version of the popular accommodation rental platform, Airbnb. It includes SQL scripts to create and populate tables for users, properties, hosts, bookings, transactions, reviews, amenities, and their relationships.

## Table of Contents

- [Introduction](#introduction)
- [Database Structure](#database-structure)
- [Data Visualization](#data-visualization)
- [ER Diagram](#er-diagram)
- [Getting Started](#getting-started)
- [Sample Queries](#sample-queries)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project is a demonstration of how one might create a database model for a platform similar to Airbnb. It includes tables for managing users, properties, hosts, bookings, transactions, reviews, amenities, and their relationships. The database schema allows for basic functionalities such as user registration, property listing, booking management, transaction handling, and review submission.

## Database Structure

The database structure consists of the following tables:

- `users`: Stores information about users registered on the platform.
- `property`: Contains details of properties available for booking.
- `host`: Manages information about hosts who list properties on the platform.
- `hosting`: Represents the relationship between hosts and the properties they list.
- `booking`: Stores booking details made by users for properties.
- `transaction`: Manages transaction records related to bookings.
- `review`: Stores reviews submitted by users for properties.
- `amenity`: Contains a list of amenities available for properties.
- `property_amenity`: Represents the relationship between properties and amenities.

## Data Visualization

<img width="642" alt="Screenshot 2024-03-26 142040" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/c468728a-49cf-440a-9807-023fa57fdbc8">
<img width="701" alt="Screenshot 2024-03-26 141912" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/9ad8067b-4699-49af-a13b-75cfca71cf9e">

This section contains a screenshot of Power BI, which was used for data visualization and analysis of the Airbnb database.

## ER Diagram


This section includes a screenshot of Exldraw, which was used to draw the Entity-Relationship (ER) diagram representing the database structure of the Airbnb project.

## Getting Started
<img width="960" alt="Screenshot 2024-02-15 153357" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/affc0b3b-44ad-4033-9c1b-026637c7d05b">

To set up this project locally, follow these steps:

1. Clone the repository to your local machine.
2. Run the SQL scripts provided in your preferred SQL database management system (e.g., MySQL, PostgreSQL).
3. Optionally, populate the tables with sample data using the provided INSERT statements.
4. Execute SQL queries to interact with the database and perform operations.

## Sample Queries

The project includes sample SQL queries for basic data retrieval and manipulation tasks. You can use these queries to explore the functionality of the database and test various scenarios.

## Contributing

Contributions to this project are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

