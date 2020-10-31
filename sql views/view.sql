CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `developer_roles_and_priviledges` AS
    SELECT DISTINCT
        `persons`.`first_name` AS `first_name`,
        `persons`.`last_name` AS `last_name`,
        `persons`.`email` AS `email`,
        `websites`.`name` AS `name`,
        `websites`.`visits` AS `visits`,
        `websites`.`updated` AS `website_updated`,
        `website_roles`.`role` AS `website_role`,
        `website_priviledges`.`priveledge` AS `priveledge`,
        `pages`.`title` AS `title`,
        `pages`.`views` AS `views`,
        `pages`.`updated` AS `page_updated`,
        `page_roles`.`role` AS `page_roles`,
        `page_priviledges`.`priviledge` AS `priviledge`
    FROM
        (((((((`persons`
        JOIN `developers`)
        JOIN `websites`)
        JOIN `pages`)
        JOIN `website_priviledges`)
        JOIN `website_roles`)
        JOIN `page_priviledges`)
        JOIN `page_roles`)
    WHERE
        ((`persons`.`id` = `developers`.`id`)
            AND (`website_roles`.`developer` = `developers`.`id`)
            AND (`website_roles`.`website` = `websites`.`id`)
            AND (`page_roles`.`developer` = `developers`.`id`)
            AND (`page_roles`.`page` = `pages`.`id`)
            AND (`pages`.`website` = `websites`.`id`))
            
	