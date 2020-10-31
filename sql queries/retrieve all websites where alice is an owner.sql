SELECT websites.name 
FROM websites, website_roles
WHERE website_roles.website = websites.id AND website_roles.developer = 12 AND website_roles.role = 'owner'