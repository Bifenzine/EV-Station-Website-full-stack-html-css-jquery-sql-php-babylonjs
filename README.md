# EV-Station-Website-full-stack-html-css-jquery-sql-php-babylonjs

# EV Station Website

## Description

A full-stack web application for managing electric vehicle (EV) charging stations. This project incorporates HTML, CSS, jQuery, SQL, PHP, and Babylon.js for a comprehensive and interactive user experience.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Station Location**: Find EV charging stations based on user location.
- **Availability Tracking**: Real-time updates on the availability of charging stations.
- **User Authentication**: Secure login and registration system.
- **Booking System**: Reserve charging slots in advance.
- **3D Visualization**: Interactive 3D models of charging stations using Babylon.js.
- **Admin Dashboard**: Manage stations, users, and bookings.

## Technologies Used

- **Frontend**: HTML, CSS, jQuery
- **Backend**: PHP
- **Database**: SQL
- **3D Graphics**: Babylon.js

## Installation

### Prerequisites

- Web server (e.g., Apache, Nginx)
- PHP 7.4 or higher
- MySQL or MariaDB
- Node.js and npm (for frontend dependencies)

### Steps

1. Clone the repository:
    ```sh
    git clone https://github.com/Bifenzine/EV-Station-Website-full-stack-html-css-jquery-sql-php-babylonjs.git
    cd EV-Station-Website-full-stack-html-css-jquery-sql-php-babylonjs
    ```

2. Set up the database:
    - Create a new database.
    - Import the provided SQL file to set up the necessary tables:
      ```sh
      mysql -u your_username -p your_database < database/schema.sql
      ```

3. Configure the backend:
    - Update the database configuration in `config.php`:
      ```php
      define('DB_SERVER', 'your_server');
      define('DB_USERNAME', 'your_username');
      define('DB_PASSWORD', 'your_password');
      define('DB_NAME', 'your_database');
      ```

4. Install frontend dependencies:
    ```sh
    npm install
    ```

5. Start the development server:
    ```sh
    npm start
    ```

6. Access the application in your web browser at `http://localhost`.

## Usage

- **Home Page**: View nearby EV charging stations.
- **Login/Register**: Authenticate to access booking features.
- **Dashboard**: Admin functionalities for managing stations and users.
- **3D Visualization**: Explore the charging stations in 3D.

## Screenshots

![Home Page](screenshots/home.png)
*Home Page*

![Admin Dashboard](screenshots/admin-dashboard.png)
*Admin Dashboard*

![3D Visualization](screenshots/3d-visualization.png)
*3D Visualization*

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create your feature branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m 'Add YourFeature'`
4. Push to the branch: `git push origin feature/YourFeature`
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or support, please contact [Your Name] at [your.email@example.com].

