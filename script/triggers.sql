-- **********************************************
-- *   TRIGGER FOR UPDATING STOCK QUANTITY  *
-- **********************************************
DELIMITER //
CREATE TRIGGER stock_update
    AFTER INSERT ON orderitem
    FOR EACH ROW
BEGIN
    UPDATE stock
    SET quantity = quantity - NEW.quantity
    WHERE stock_id = NEW.stock_id;
END;
//

-- **********************************************
-- *   TRIGGER TO AUTO INSERT INTO OUT OF STOCK TABLE
-- **********************************************
DELIMITER //
CREATE TRIGGER insert_into_outofstock
    AFTER UPDATE ON stock
    FOR EACH ROW
BEGIN
    IF NEW.quantity <= 0 THEN
		INSERT INTO `outofstock`(`outofstock_id`,`itemname`)
		VALUES(OLD.stock_id, OLD.item_name);
end if;
END;
//

DELIMITER //
CREATE TRIGGER out_of_stock_del
    AFTER UPDATE ON stock
    FOR EACH ROW
BEGIN
    IF NEW.quantity >= 1 THEN
    DELETE FROM outofstock
    WHERE itemname = NEW.item_name;
END IF;
END//
DELIMITER ;

