USE orionDatabase;

-- Mantiene actualizado el récord de rendimiento de cada modelo tras cada experimento completado.
DELIMITER //

CREATE TRIGGER trg_actualizar_mejor_accuracy
AFTER INSERT ON Experimento
FOR EACH ROW
BEGIN
    IF NEW.estado = 'completado' AND NEW.desempeno_accuracy > (
        SELECT mejor_accuracy
        FROM Modelo_IA
        WHERE id_modelo = NEW.id_modelo
    ) THEN
        UPDATE Modelo_IA
        SET mejor_accuracy = NEW.desempeno_accuracy
        WHERE id_modelo = NEW.id_modelo;
    END IF;
END //

DELIMITER ;