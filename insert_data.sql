INSERT INTO papers (id, title, link)
VALUES
    (1, 'image processing', 'arxiv.com'),
    (2, 'Advances reinforcement learning', 'ieee.com'),
    (3, 'Advances robotics', 'ieee.com'),
    (4, 'IoT smart manufacturing', 'arxiv.com');

INSERT INTO authors (id, paper_id, name, is_committee)
VALUES
    (1, 1, 'Bob', TRUE),
    (2, 2, 'lee', FALSE),
    (3, 3, 'kim', FALSE),
    (4, 4, 'Park', TRUE);


INSERT INTO reviews (id, paper_id, author_id, technical_quality, originality, comment, presentation)
VALUES
    (1, 1, 1, 1, 2, 'Very Good', 'Good'),
    (2, 2, 2, 5, 5, 'Excellent', 'Excellent'),
    (3, 3, 3, 3, 4, 'Good', 'Excellent'),
    (4, 4, 4, 6, 1, 'Excellent', 'Good');

INSERT INTO keywords (id, paper_id, categories)
VALUES
    (1, 1, 'AI, Machine Learning'),
    (2, 2, 'AI, Machine Learning'),
    (3, 3, 'Advance Machine'),
    (4, 4, 'Advance Machine');

INSERT INTO decisions (id, paper_id, decision)
VALUES
    (1, 1, TRUE),
    (2, 2, FALSE),
    (3, 3, TRUE),
    (4, 4, FALSE);