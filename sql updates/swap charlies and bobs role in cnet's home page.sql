SET @bobsrole := (SELECT page_roles.role FROM page_roles WHERE page_roles.developer = 23 AND page_roles.page = 123);
SET @charliesrole := (SELECT page_roles.role FROM page_roles WHERE page_roles.developer = 34 AND page_roles.page = 123);

UPDATE page_roles
SET page_roles.role = @charliesrole
WHERE page_roles.page = 123 AND page_roles.developer = 23;

UPDATE page_roles 
SET page_roles.role = @bobsrole 
WHERE page_roles.page = 123 AND page_roles.developer = 34;

