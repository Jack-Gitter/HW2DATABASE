SELECT persons.first_name
FROM persons, developers
WHERE persons.id = developers.id AND developers.id = 34