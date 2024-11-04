SELECT * FROM Eventos;

-- Consulta para ver todos los participantes registrados en un evento específico
SELECT p.Nombre_Participante, e.Nombre_Evento
FROM Participantes p
JOIN Participante_Evento pe ON p.Participante_ID = pe.Participante_ID
JOIN Eventos e ON pe.Evento_ID = e.Evento_ID
WHERE e.Evento_ID = 1;