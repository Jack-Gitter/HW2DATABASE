SELECT websites.name
FROM websites, website_roles 
WHERE website_roles.website = websites.id AND website_roles.developer = 34 AND website_roles.role = 'admin' AND websites.visits > 6000000 