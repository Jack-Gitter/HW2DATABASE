SELECT persons.first_name 
FROM persons, developers, page_roles, pages
WHERE persons.id = developers.id AND 
page_roles.developer = developers.id AND 
page_roles.page = pages.id AND
pages.views < 300000 AND 
page_roles.role = 'reviewer'
