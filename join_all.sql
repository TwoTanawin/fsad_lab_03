SELECT 
    p.id AS paper_id,
    p.title AS paper_title,
    p.link AS paper_link,
    a.id AS author_id,
    a.name AS author_name,
    a.is_committee,
    r.id AS review_id,
    r.technical_quality,
    r.originality,
    r.presentation,
    r.comment,
    k.id AS keyword_id,
    k.categories,
    d.id AS decision_id,
    d.decision
FROM 
    papers p
LEFT JOIN 
    authors a ON p.id = a.paper_id
LEFT JOIN 
    reviews r ON p.id = r.paper_id AND a.id = r.author_id
LEFT JOIN 
    keywords k ON p.id = k.paper_id
LEFT JOIN 
    decisions d ON p.id = d.paper_id;
