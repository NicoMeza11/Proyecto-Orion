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

-- Al insertar un nuevo experimento, valida que el desempeño accuracy este dentro del rango permitido (0.00 - 1.00)

DELIMITER //

CREATE TRIGGER trg_validar_accuracy_experimento
BEFORE INSERT ON Experimento
FOR EACH ROW
BEGIN
    IF NEW.desempeno_accuracy IS NOT NULL AND (NEW.desempeno_accuracy < 0 OR NEW.desempeno_accuracy > 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de desempeno_accuracy debe estar entre 0.00 y 1.00.';
    END IF;
END //

DELIMITER ;

-- Valida que al registrar un convenio, la fecha de término no sea inconsistente con la de inicio
DELIMITER //

CREATE TRIGGER trg_validar_fechas_convenio
BEFORE INSERT ON Convenio
FOR EACH ROW
BEGIN
    IF NEW.fecha_fin IS NOT NULL AND NEW.fecha_fin < NEW.fecha_inicio THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: La fecha de término del convenio no puede ser anterior a la fecha de inicio.';
    END IF;
END //

DELIMITER ;