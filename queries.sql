-- This file contains the SQL experiments I did for my imaginary poem application
-- Notices how (almost) all of the words I wrote in capital are a differet color
-- That is because VSCode recognizes them as part of the standard SQL language :)

-- This one deletes a table
DROP TABLE poems;

-- This one creates a table
CREATE TABLE poems(
    id          INT NOT NULL AUTO_INCREMENT,
    title       TEXT NOT NULL,
    content     TEXT(10000) NOT NULL,
    source      TEXT(10),
    author      TEXT(100),
    created     DATETIME NOT NULL,
    edited      DATETIME,
    published   BOOLEAN NOT NULL,
    deleted     DATETIME,
    PRIMARY KEY(id)
);

-- This one inserts some data into our nice new table
INSERT INTO
    poems(title, content, created, published)
VALUES
    ("Rats", "r", "2000-01-01T00:00:02", 1),
    ("Cats", "c", "2000-01-01T00:00:02", 1),
    ("Bananas", "x", "2000-01-01T00:00:02", 1),
    ("Ananas", "a", "2000-01-01T00:00:02", 1),
    ("Rock", "#", "2000-01-01T00:00:02", 1);

-- UPDATE incorrect data
UPDATE poems SET content="b" WHERE title="Bananas";

-- DELETE some of the inserted data
DELETE poems WHERE title="Rock";

-- SELECT all or some of the inserted data
SELECT * FROM poems;
SELECT id, title FROM poems;