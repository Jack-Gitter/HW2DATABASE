
SELECT websites.name
FROM website_priviledges, websites
WHERE website_priviledges.developer = 23 AND website_priviledges.priveledge = 'delete' AND website_priviledges.website = websites.id
