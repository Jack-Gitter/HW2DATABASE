CREATE TABLE `website_roles` (
  `id` int NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `website` int NOT NULL,
  `developer` int DEFAULT NULL,
  PRIMARY KEY (`id`,`website`),
  KEY `website_role_to_website_idx` (`website`),
  KEY `website_role_to_developer_idx` (`developer`),
  KEY `website_role_idx` (`role`),
  CONSTRAINT `website_role` FOREIGN KEY (`role`) REFERENCES `roles` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_role_to_developer` FOREIGN KEY (`developer`) REFERENCES `developers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_role_to_website` FOREIGN KEY (`website`) REFERENCES `websites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
