SELECT websites.name 
FROM widgets, websites, page_roles, pages
WHERE websites.id = pages.website AND page_roles.page = pages.id AND page_roles.developer = 23 AND page_roles.role = 'reviewer' AND widgets.page = pages.id AND widgets.DTYPE = 'youtube'

# get all websites bob is a reviewer on, then get all youtube videos on that website