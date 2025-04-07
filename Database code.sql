CREATE TABLE Venue (
    VenueId INT PRIMARY KEY IDENTITY(1,1),
    VenueName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl NVARCHAR(255) NULL  
);


CREATE TABLE Event (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    EventName NVARCHAR(100) NOT NULL,
    EventDate DATETIME NOT NULL,
    Description NVARCHAR(255) NULL,
    VenueId INT NOT NULL,
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);


CREATE TABLE Booking (
    BookingId INT PRIMARY KEY IDENTITY(1,1),
    EventId INT NOT NULL,
    VenueId INT NOT NULL,
    BookingDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (EventId) REFERENCES Event(EventId),
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);




INSERT INTO Venue (VenueName, Location, Capacity, ImageUrl)
VALUES 
    ('Grand Ballroom', 'New York', 500, 'https://example.com/ballroom.jpg'),
    ('Tech Hub', 'San Francisco', 200, 'https://example.com/techhub.jpg');

-- Insert Events
INSERT INTO Event (EventName, EventDate, Description, VenueId)
VALUES 
    ('Tech Conference', '2025-06-15 ', 'Annual developer summit', 2),
    ('Wedding Reception', '2025-07-20 ', 'Smith-Jones wedding', 1);

-- Insert Bookings
INSERT INTO Booking (EventId, VenueId)
VALUES 
    (1, 2),  -- Tech Conference @ Tech Hub
    (2, 1);  -- Wedding @ Grand Ballroom



	Select * FROM Venue;
	Select * FROM Event;
	Select * FROM Booking;