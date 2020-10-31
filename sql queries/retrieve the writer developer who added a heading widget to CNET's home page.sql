SELECT persons.first_name
FROM persons, developers, page_roles
WHERE persons.id = developers.id AND page_roles.developer = developers.id AND page_roles.page = 567 AND page_roles.role = 'writer'
