CREATE DEFINER=`root`@`localhost` TRIGGER `page_role_AFTER_INSERT` AFTER INSERT ON `page_roles` FOR EACH ROW BEGIN
	IF NEW.role = 'admin' OR NEW.role = 'owner' THEN
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'write');
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'update');
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'delete' );
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'read');
	END IF;
    IF NEW.role = 'writer' THEN 
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'read'); 
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'create'); 
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'update'); 
    END IF;
    IF NEW.role = 'editor' THEN
	INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page, 'read'); 
	INSERT INTO page_priviledges VALUES (null,  NEW.developer, NEW.page, 'update'); 
    END IF;
    IF NEW.role = 'reviewer' THEN
    INSERT INTO page_priviledges VALUES (null, NEW.developer, NEW.page , 'read'); 
    END IF;
END