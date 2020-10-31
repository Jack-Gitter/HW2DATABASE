SELECT name
FROM (SELECT websites.name, min(websites.visits) AS website_visits
		FROM websites
		GROUP BY websites.name 
		ORDER BY website_visits ASC LIMIT 1) AS LOWEST_WEBSITE