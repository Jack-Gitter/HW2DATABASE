CREATE DEFINER=`root`@`localhost` TRIGGER `website_role_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW BEGIN
	IF NEW.role = 'ADMIN' OR NEW.role = 'OWNER' THEN
    INSERT INTO website_priviledges VALUES ('WRITE', NEW.developer, NEW.website ,null);
    INSERT INTO website_priviledges VALUES ('UPDATE', NEW.developer, NEW.website ,null);
    INSERT INTO website_priviledges VALUES ('DELETE', NEW.developer, NEW.website ,null);
    INSERT INTO website_priviledges VALUES ('READ', NEW.developer, NEW.website ,null);
	END IF;
    IF NEW.role = 'WRITER' THEN 
    INSERT INTO website_priviledges VALUES ('READ', NEW.developer, NEW.website, null); 
    INSERT INTO website_priviledges VALUES ('CREATE', NEW.developer, NEW.website, null); 
    INSERT INTO website_priviledges VALUES ('UPDATE', NEW.developer, NEW.website, null); 
    END IF;
    IF NEW.role = 'EDITOR' THEN
	INSERT INTO website_priviledges VALUES ('READ', NEW.developer, NEW.website, null); 
	INSERT INTO website_priviledges VALUES ('UPDATE', NEW.developer, NEW.website, null); 
    END IF;
    IF NEW.role = 'REVIEWER' THEN
    INSERT INTO website_priviledges VALUES ('READ', NEW.developer, NEW.website, null); 
    END IF;
END