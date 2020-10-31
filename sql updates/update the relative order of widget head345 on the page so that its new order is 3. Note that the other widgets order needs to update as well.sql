SET SQL_SAFE_UPDATES = 0; 

UPDATE widgets
SET widgets.order = widgets.order -1
WHERE widgets.order BETWEEN 1 AND 3;

UPDATE widgets
SET widgets.order = 3
WHERE widgets.name = "head345";
