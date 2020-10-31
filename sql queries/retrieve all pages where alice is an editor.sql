SELECT pages.id 
FROM page_roles, pages
WHERE page_roles.developer = 12 AND page_roles.role = 'editor' AND pages.id = page_roles.page