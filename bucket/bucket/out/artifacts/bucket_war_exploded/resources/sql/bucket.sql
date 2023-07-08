use bucket;

CREATE TABLE IF NOT EXISTS bucket(
    b_id VARCHAR(10) NOT NULL,
    b_bucket VARCHAR(20),
    PRIMARY KEY (b_id)
)default CHARSET=utf8;


INSERT INTO bucket VALUES (2, '테스트2');

TRUNCATE bucket;