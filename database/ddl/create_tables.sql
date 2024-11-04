-- Crear tabla de eventos
CREATE TABLE IF NOT EXISTS Eventos (
    Evento_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Evento TEXT NOT NULL,
    Descripción_Evento TEXT NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    Ubicación_ID INTEGER NOT NULL,
    FOREIGN KEY (Ubicación_ID) REFERENCES Ubicaciones(Ubicación_ID)
);

-- Crear tabla de participantes
CREATE TABLE IF NOT EXISTS Participantes (
    Participante_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Participante TEXT NOT NULL,
    Email_Participante TEXT NOT NULL
);

-- Crear tabla de ubicaciones
CREATE TABLE IF NOT EXISTS Ubicaciones (
    Ubicación_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Ubicación TEXT NOT NULL,
    Dirección TEXT
);

-- Crear tabla de registros de eventos
CREATE TABLE IF NOT EXISTS Participante_Evento (
    Registro_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Evento_ID INTEGER NOT NULL,
    Participante_ID INTEGER NOT NULL,
    FOREIGN KEY (Evento_ID) REFERENCES Eventos(Evento_ID),
    FOREIGN KEY (Participante_ID) REFERENCES Participantes(Participante_ID)
);