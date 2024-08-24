SELECT DISTINCT a.name
FROM authors a
JOIN papers p ON a.paper_id = p.id
JOIN reviews r ON p.id = r.paper_id
WHERE r.technical_quality > 3;
