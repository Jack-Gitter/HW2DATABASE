CREATE TABLE `phones` (
  `phone` varchar(45) NOT NULL,
  `primary` tinyint(1) DEFAULT NULL,
  `person` int DEFAULT NULL,
  PRIMARY KEY (`phone`),
  KEY `person_hasa_phone_idx` (`person`),
  CONSTRAINT `person_hasa_phone` FOREIGN KEY (`person`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
