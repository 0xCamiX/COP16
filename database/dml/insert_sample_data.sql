INSERT INTO Categories (Category_Name) VALUES ('Plant');
INSERT INTO Categories (Category_Name) VALUES ('Bird');

INSERT INTO Species (Common_Name, Scientific_Name, Description, Category_ID, Image_URL)
VALUES ('Guayacan', 'Tabebuia chrysantha', 'Yellow-flowering native tree', 1, 'https://example.com/guayacan.jpg');

INSERT INTO Species (Common_Name, Scientific_Name, Description, Category_ID, Image_URL)
VALUES ('Cacique Candela', 'Cacicus cela', 'Colorful bird with bright yellow chest', 2, 'https://example.com/cacique.jpg');

INSERT INTO Locations (Location_Name, Description, Latitude, Longitude)
VALUES ('Parque del Perro', 'Park in Cali with native trees', 3.42158, -76.53249);

INSERT INTO Locations (Location_Name, Description, Latitude, Longitude)
VALUES ('Cerro de las Tres Cruces', 'Mountainous area with high biodiversity', 3.46212, -76.55123);

-- Insertar datos de muestra en la tabla de eventos (Events)
INSERT INTO Events (Event_Name, Event_Description, Event_Date, Event_Time, Location_ID)
VALUES ('Opening Ceremony', 'Inauguration of COP16 event', '2023-12-12', '09:00', 1);

INSERT INTO Event_Locations (Location_Name, Description, Latitude, Longitude, Capacity, Venue_Type)
VALUES ('Centro de Convenciones', 'Main convention center for COP16', 3.45057, -76.53209, 500, 'Centro de ceremonia')

INSERT INTO Participants (Participant_ID, Participant_Name, Participant_Email)
VALUES (1005863625, 'Juan Camilo', 'juncamilo@gmail.com');

INSERT INTO Participants (Participant_ID, Participant_Name, Participant_Email)
VALUES (1150424848, 'Ashley G.', 'ashleygallego@gmail.com');

INSERT INTO Event_Participant (Event_ID, Participant_ID) VALUES (1, 1005863625);
INSERT INTO Event_Participant (event_id, participant_id) VALUES (1, 1150424848);

INSERT INTO Specie_Location (Species_ID, Location_ID, Observations) VALUES (1, 1, 'Flowering Season');
INSERT INTO Specie_Location (Species_ID, Location_ID, Observations) VALUES (2, 2, 'Tres Cruces');