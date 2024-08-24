SELECT
    p.id AS paper_id,
    p.title AS paper_title,
    p.link AS paper_link,
    a.id AS author_id,
    a.name AS author_name,
    a.is_committee
FROM
    papers p
JOIN
    authors a ON p.id = a.paper_id;
