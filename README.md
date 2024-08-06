# EV Station Website

![](assets/screen.PNG)

![](assets/mock.PNG)

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

- XAMPP with PHP and MySQL
- Web browser (e.g., Chrome, Firefox)

### Steps

1. Clone the repository into your XAMPP htdocs directory:
    ```sh
    git clone https://github.com/Bifenzine/EV-Station-Website-full-stack-html-css-jquery-sql-php-babylonjs.git C:\xampp\htdocs\EV-Station
    ```

2. Set up the database:
    - Open phpMyAdmin by going to `http://localhost/phpmyadmin` in your browser.
    - Create a new database named `ev_station_db`.
    - Import the provided SQL file located at `C:\xampp\htdocs\EV-Station\database\schema.sql` into the `ev_station_db` database.

3. Configure the backend:
    - Update the database configuration in `C:\xampp\htdocs\EV-Station\config.php`:
      ```php
      define('DB_SERVER', 'localhost');
      define('DB_USERNAME', 'root');
      define('DB_PASSWORD', '');
      define('DB_NAME', 'ev_station_db');
      ```

4. Start your XAMPP Apache server and MySQL database through the XAMPP Control Panel.

5. Access the application in your web browser at `http://localhost/EV-Station`.

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
