SELECT count(widgets.id)
FROM pages, widgets
WHERE pages.website = 345 AND widgets.page = pages.id
