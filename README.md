Airbnb Clone Project
This is a database project aiming to create a simplified version of the popular accommodation rental platform, Airbnb. It includes SQL scripts to create and populate tables for users, properties, hosts, bookings, transactions, reviews, amenities, and their relationships.

Table of Contents
Introduction
Database Structure
Data Visualization
ER Diagram
Getting Started
Sample Queries
Contributing
License
Introduction
This project is a demonstration of how one might create a database model for a platform similar to Airbnb. It includes tables for managing users, properties, hosts, bookings, transactions, reviews, amenities, and their relationships. The database schema allows for basic functionalities such as user registration, property listing, booking management, transaction handling, and review submission.

Database Structure
The database structure consists of the following tables:

users: Stores information about users registered on the platform.
property: Contains details of properties available for booking.
host: Manages information about hosts who list properties on the platform.
hosting: Represents the relationship between hosts and the properties they list.
booking: Stores booking details made by users for properties.
transaction: Manages transaction records related to bookings.
review: Stores reviews submitted by users for properties.
amenity: Contains a list of amenities available for properties.
property_amenity: Represents the relationship between properties and amenities.

ER Diagram

This section includes a screenshot of the Entity-Relationship (ER) diagram representing the database structure of the Airbnb project.
<img width="960" alt="Screenshot 2024-02-15 153357" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/3dd92dc3-0c07-44e4-9ae1-933194a50aa3">

Data Visualization
This section contains a screenshot of data visualization tools or dashboards used to analyze data from the Airbnb database.
<img width="701" alt="image" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/a51f671d-fa56-4524-9655-3d55d9e192f0">
<img width="642" alt="image" src="https://github.com/yashvisharma1204/Airbnb/assets/137611141/ed861478-d980-4537-be1d-d18ac9871823">



Getting Started
To set up this project locally, follow these steps:

Clone the repository to your local machine.
Run the SQL scripts provided in your preferred SQL database management system (e.g., MySQL, PostgreSQL).
Optionally, populate the tables with sample data using the provided INSERT statements.
Execute SQL queries to interact with the database and perform operations.
Sample Queries
The project includes sample SQL queries for basic data retrieval and manipulation tasks. You can use these queries to explore the functionality of the database and test various scenarios.

Contributing
Contributions to this project are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

License
This project is licensed under the MIT License.
