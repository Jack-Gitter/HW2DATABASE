SELECT DISTINCT widgets.id
FROM 
(SELECT pages.id 
FROM pages, websites
WHERE pages.website = 456) AS TEMPVIEW JOIN widgets ON TEMPVIEW.id = widgets.page
