SELECT DISTINCT persons.first_name 
FROM persons, developers, website_roles
WHERE persons.id = developers.id AND website_roles.developer = developers.id AND website_roles.website = 234 AND website_roles.role != 'owner'
