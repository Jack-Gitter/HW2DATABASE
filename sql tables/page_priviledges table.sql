CREATE TABLE `page_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `developer` int DEFAULT NULL,
  `page` int DEFAULT NULL,
  `priviledge` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_priviledge_to_page_idx` (`page`),
  KEY `pave_priviledge_to_develoiper_idx` (`developer`),
  KEY `priviledge_type_idx` (`priviledge`),
  CONSTRAINT `page_priviledge_to_page` FOREIGN KEY (`page`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pave_priviledge_to_develoiper` FOREIGN KEY (`developer`) REFERENCES `developers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`type`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
