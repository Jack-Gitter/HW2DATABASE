SELECT pages.title
FROM page_priviledges, pages
WHERE  page_priviledges.developer = 34 AND page_priviledges.priviledge = 'create' AND page_priviledges.page = pages.id