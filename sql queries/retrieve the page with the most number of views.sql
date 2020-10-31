SELECT id 
FROM 
(SELECT pages.id, max(pages.views) AS pages_views
FROM pages
GROUP BY pages.id
ORDER BY pages_views DESC LIMIT 1) VIEW
