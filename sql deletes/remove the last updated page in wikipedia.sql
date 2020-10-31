SET @lastpageupdatedonwikipedia := (SELECT pages.id FROM pages WHERE pages.website = 345 ORDER BY pages.updated DESC LIMIT 1);

DELETE FROM pages
WHERE pages.id = @lastpageupdatedonwikipedia