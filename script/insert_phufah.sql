-- -----------------------------------------------------
-- Table `storemanagement`.`user`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('1', 'khing', '1');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('2', 'phufah', '123');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('3', 'kidcat', '4');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('4', 'pear', '15235');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('5', 'dodo', '151dsd');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('6', 'albert', '231231');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('7', 'bob', '1999');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('8', 'tedison', '45858');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('9', 'josh', '4451');
INSERT INTO `storemanagement`.`user` (`user_id`, `username`, `password`) VALUES ('10', 'ted', '187');

-- -----------------------------------------------------
-- Table `storemanagement`.`supplier`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('1', 'FunZone Toys');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('2', 'Playful Pals Toy Co.');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('3', 'Toyland Express');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('4', 'Happy Kids Toys');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('5', 'MagicToy World');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('6', 'Toy Universe');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('7', 'WonderToy Company');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('8', 'Dreamy Dolls and Toys');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('9', 'Adventure Playtime Supplies');
INSERT INTO `storemanagement`.`supplier` (`supplier_id`, `supplier_name`) VALUES ('10', 'Creative Kids Toy Co.');

-- -----------------------------------------------------
-- Table `storemanagement`.`customer`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('1', 'Emily', 'Johnson', 'emily.johnson@hotmail.com', '12345678');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('2', 'Liam', 'Smith', 'liam.smith@hotmail.com', '98765432');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('3', 'Olivia', 'Brown', 'olivia.brown@hotmail.com', '53697415');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('4', 'Noah', 'Davis', 'noah.davis@hotmail.com', '73169842');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('5', 'Ava', 'Wilson', 'ava.wilson@hotmail.com', '23697815');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('6', 'Ethan', 'Martinez', 'ethan.martinez@hotmail.com', '59731589');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('7', 'Sophia', 'Thompson ', 'sophia.thompson@hotmail.com', '23549813');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('8', 'Mason', 'Taylor', 'mason.taylor@hotmail.com', '26879512');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('9', 'Mia', 'Anderson', 'mia.anderson@hotmail.com', '12135498');
INSERT INTO `storemanagement`.`customer` (`customer_id`, `customer_fname`, `customer_lname`, `email`, `phone`) VALUES ('10', 'Lucas', 'Clark', 'lucas.clark@hotmail.com', '85274196');


-- -----------------------------------------------------
-- Table `storemanagement`.`order`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('1', '1', '06/01/63', 'delivered');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('2', '2', '09/06/63', 'not deliver');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('3', '3', '09/06/63', 'not deliver');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('4', '4', '23/03/63', 'delivered');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('5', '5', '23/06/63', 'not deliver');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('6', '6', '27/04/63', 'delivered');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('7', '7', '21/02/63', 'delivered');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('8', '8', '23/06/63', 'not deliver');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('9', '9', '18/02/63', 'delivered');
INSERT INTO `storemanagement`.`order` (`order_id`, `customer_id`, `date`, `delivery_status`) VALUES ('10', '10', '2/06/63', 'not deliver');


-- -----------------------------------------------------
-- Table `storemanagement`.`orderitem`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('1', '1', '11', '2500', 'test item', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('2', '2', '8', '2600', 'test item2', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('3', '3', '9', '1800', 'test ite3', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('4', '4', '2', '800', 'test item4', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('5', '5', '3', '1500', 'test item5', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('6', '6', '5', '4000', 'test item6', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('7', '7', '19', '3800', 'test item7', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('8', '8', '6', '3600', 'test item8', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('9', '9', '1', '5000', 'test item9', '1');
INSERT INTO `storemanagement`.`orderitem` (`orderitem_id`, `order_id`, `quantity`, `price`, `item_name`, `supplier_id`) VALUES ('10', '10', '3', '6000', 'test item10', '1');


-- -----------------------------------------------------
-- Table `storemanagement`.`stock`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Marvel Legends Avengers Assemble', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Mighty Mjolnir Thor Statue', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Iron Man Mark XLII Limited Edition Figure', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Captain America Shield Collection', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Black Widow Deadly Origins Statue', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Hulk Smash Battle Set', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Golden Luxe Bearbrick', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Cosmic Galaxy Bearbrick', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'Superman: Man of Steel Deluxe Figure', '100');
INSERT INTO `storemanagement`.`stock` (`stock_id`, `item_name`, `quantity`) VALUES ('1', 'The Flash: Speed Force Showcase', '100');

-- -----------------------------------------------------
-- Table `storemanagement`.`employee`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('1', 'Harper', 'Bennett', 'Female', '126479318', 'Chiang Mai', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('2', 'Samuel', 'Foster ', 'Male', '75631698', 'Chiang Rai', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('3', 'Lily', 'Russell', 'Female', '24681358', 'Bangkok', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('4', 'Owen', 'Peterson', 'Male', '54301895', 'Bangkok', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('5', 'Grace', 'Kelly ', 'Female', '03597519', 'Bangkok', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('6', 'Noah', 'Sullivan', 'Male', '01357951', 'Bangkok', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('7', 'Amelia', 'Richardson', 'Female', '01367981', 'Bangkok', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('8', 'Elijah', 'Hayes', 'Male', '54931818', 'Chiang Mai', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('9', 'Stella', 'Murphy', 'Female', '66688833', 'Chiang Rai', '02/05/2001', 'Harper@hotmail.com');
INSERT INTO `storemanagement`.`employee` (`employee_id`, `employee_fname`, `employee_lname`, `gender`, `phone`, `address`, `birthdate`, `email`) VALUES ('10', 'Henry', 'Cooper', 'Male', '18479524', 'Chiang Mai', '02/05/2001', 'Harper@hotmail.com');


-- -----------------------------------------------------
-- Table `storemanagement`.`outofstock`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `storemanagement`.`shipping`
-- -----------------------------------------------------
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('1', '1', '1', 'kolkata', 'plane');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('2', '2', '2', 'Phuket', 'car');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('3', '3', '3', 'Mumbai', 'plane');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('4', '4', '4', 'Bangkok', 'car');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('5', '5', '5', 'Chiang mai', 'car');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('6', '6', '6', 'Chiang Rai', 'car');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('7', '7', '7', 'Osaka', 'cargo ship');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('8', '8', '8', 'Tokyo', 'plane');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('9', '9', '9', 'Melbroune', 'cargo ship');
INSERT INTO `storemanagement`.`shipping` (`shipping_id`, `orderid`, `customerid`, `shipping_address`, `shipping_method`) VALUES ('10', '10', '10', 'Bangkok', 'car');

