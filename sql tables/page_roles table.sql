CREATE TABLE `page_roles` (
  `id` int NOT NULL,
  `developer` int DEFAULT NULL,
  `page` int NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`page`),
  KEY `page_role_to_page_idx` (`page`),
  KEY `page_role_to_developer_idx` (`developer`),
  KEY `role_enum_idx` (`role`),
  CONSTRAINT `page_role_to_developer` FOREIGN KEY (`developer`) REFERENCES `developers` (`id`),
  CONSTRAINT `page_role_to_page` FOREIGN KEY (`page`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_enum` FOREIGN KEY (`role`) REFERENCES `roles` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
