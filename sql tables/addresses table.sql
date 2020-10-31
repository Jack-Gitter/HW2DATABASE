CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street1` varchar(45) DEFAULT NULL,
  `street2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `primary` tinyint(1) DEFAULT NULL,
  `person` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_hasa_address_idx` (`person`),
  CONSTRAINT `person_hasa_address` FOREIGN KEY (`person`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
