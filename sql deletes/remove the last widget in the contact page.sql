set @lastwidget :=(SELECT widgets.id FROM widgets WHERE widgets.page = 345 ORDER BY id DESC LIMIT 1);

DELETE FROM widgets
WHERE widgets.id = @lastwidget
