#first get all pages reviewed by alice 
# then get all image widgets
# then join those two tables together on the page id

SELECT widgets.id 
FROM widgets, page_roles
WHERE widgets.DTYPE = 'image' AND page_roles.developer = 12 AND page_roles.role = 'reviewer'