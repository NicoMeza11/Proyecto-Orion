USE orionDatabase;

-- Procedimiento que valida la existencia de un dataset y registra automáticamente su siguiente número de versión consecutivo.

DELIMITER //

CREATE PROCEDURE sp_crear_nueva_version_dataset(
    IN p_id_dataset INT,
    IN p_desc_actualizaciones VARCHAR(255)
)
BEGIN
    DECLARE v_siguiente_version INT;
    DECLARE v_existe_dataset INT;

    SELECT COUNT(*) INTO v_existe_dataset
    FROM Dataset
    WHERE id_dataset = p_id_dataset;

    IF v_existe_dataset > 0 THEN
        SELECT IFNULL(MAX(numero_version), 0) + 1 INTO v_siguiente_version
        FROM Version_dataset
        WHERE id_dataset = p_id_dataset;

        INSERT INTO Version_dataset (numero_version, id_dataset, desc_actualizaciones)
        VALUES (v_siguiente_version, p_id_dataset, p_desc_actualizaciones);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El ID del dataset especificado no existe.';
    END IF;
END //

DELIMITER ;