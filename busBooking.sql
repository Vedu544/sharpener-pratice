-- 1. Users Table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- 2. Buses Table
CREATE TABLE Buses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    busNumber VARCHAR(50) NOT NULL UNIQUE,
    totalSeats INT NOT NULL,
    availableSeats INT NOT NULL
);

-- 3. Bookings Table
CREATE TABLE Bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    seatNumber INT NOT NULL,
    userId INT,
    busId INT,
    FOREIGN KEY (userId) REFERENCES Users(id),
    FOREIGN KEY (busId) REFERENCES Buses(id)
);

-- 4. Payments Table
CREATE TABLE Payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amountPaid DECIMAL(10,2) NOT NULL,
    paymentStatus VARCHAR(50) NOT NULL,
    bookingId INT,
    FOREIGN KEY (bookingId) REFERENCES Bookings(id)
);
