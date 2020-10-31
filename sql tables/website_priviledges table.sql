CREATE TABLE `website_priviledges` (
  `priveledge` varchar(45) DEFAULT NULL,
  `developer` int DEFAULT NULL,
  `website` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `website_privilede_to_developer_idx` (`developer`),
  KEY `website_priviledge_to_website_idx` (`website`),
  KEY `priviledge_type_idx` (`priveledge`),
  CONSTRAINT `priviledge_type` FOREIGN KEY (`priveledge`) REFERENCES `priviledges` (`type`),
  CONSTRAINT `website_priviledge_to_developer` FOREIGN KEY (`developer`) REFERENCES `developers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_priviledge_to_website` FOREIGN KEY (`website`) REFERENCES `websites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
