DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS keywords CASCADE;
DROP TABLE IF EXISTS decisions CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS papers CASCADE;

CREATE TABLE papers(
    id INTEGER PRIMARY KEY,
    title VARCHAR(100),
    link VARCHAR(100)
);

CREATE TABLE authors(
    id INTEGER PRIMARY KEY,
    paper_id INTEGER,
    name VARCHAR(100),
    is_committee BOOLEAN,
    FOREIGN KEY (paper_id) REFERENCES papers(id)
);

CREATE TABLE reviews(
    id INTEGER PRIMARY KEY,
    paper_id INTEGER,
    author_id INTEGER,
    technical_quality INTEGER,
    originality INTEGER,
    presentation VARCHAR(100),
    comment VARCHAR(100),
    FOREIGN KEY (paper_id) REFERENCES papers(id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

CREATE TABLE keywords(
    id INTEGER PRIMARY KEY,
    paper_id INTEGER,
    categories VARCHAR(100),
    FOREIGN KEY (paper_id) REFERENCES papers(id)
);

CREATE TABLE decisions(
    id INTEGER PRIMARY KEY,
    paper_id INTEGER,
    decision BOOLEAN, 
    FOREIGN KEY (paper_id) REFERENCES papers(id)
);


