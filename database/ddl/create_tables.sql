-- Events

CREATE TABLE IF NOT EXISTS Events (
    Event_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Event_Name TEXT NOT NULL,
    Event_Description TEXT NOT NULL,
    Event_Date DATE NOT NULL,
    Event_Time TIME NOT NULL,
    Location_ID INTEGER NOT NULL,
    FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
);

CREATE TABLE IF NOT EXISTS Participants (
    Participant_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Participant_Name TEXT NOT NULL,
    Participant_Email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Event_Locations (
    Location_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Location_Name TEXT NOT NULL,
    Description TEXT,
    Latitude REAL NOT NULL,
    Longitude REAL NOT NULL,
    Capacity INTEGER,
    Venue_Type TEXT
);

CREATE TABLE IF NOT EXISTS Event_Participant (
    Registration_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Event_ID INTEGER NOT NULL,
    Participant_ID INTEGER NOT NULL,
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID),
    FOREIGN KEY (Participant_ID) REFERENCES Participants(Participant_ID)
);

-- Aves and plants

CREATE TABLE IF NOT EXISTS Categories (
    Category_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Category_Name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Species (
    Species_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Common_Name TEXT NOT NULL,
    Scientific_Name TEXT NOT NULL,
    Description TEXT,
    Category_ID INTEGER NOT NULL,
    Image_URL TEXT,
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

CREATE TABLE IF NOT EXISTS Locations (
    Location_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Location_Name TEXT NOT NULL,
    Description TEXT,
    Latitude REAL NOT NULL,
    Longitude REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS Species_Location (
    Relation_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Species_ID INTEGER NOT NULL,
    Location_ID INTEGER NOT NULL,
    Observations TEXT,
    FOREIGN KEY (Species_ID) REFERENCES Species(Species_ID),
    FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
);