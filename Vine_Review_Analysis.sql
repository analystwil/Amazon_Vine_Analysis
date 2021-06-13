--  Vine Table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT * FROM vine_table;

-- 1 Total_Votes Table
CREATE TABLE total_votes (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

DELETE FROM total_votes
WHERE total_votes < 20;

SELECT * FROM total_votes
WHERE total_votes >= 20;

-- 2 Helpful_Votes
CREATE TABLE helpful_votes (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT * FROM helpful_votes;

SELECT * FROM helpful_votes
WHERE (CAST (helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT)) >=0.5;

-- 3 Vine Program (Paid)
CREATE TABLE vine_program (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT * FROM vine_program;

SELECT * FROM vine_program
WHERE vine = 'Y';

-- 4 Vine Program Unpaid 
CREATE TABLE vine_program_unpaid (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

SELECT * FROM vine_program_unpaid;

SELECT * FROM vine_program
WHERE vine = 'N';

-- 5 Create table with total number of reviews 
CREATE TABLE total_number_of_reviews (
	total_votes int);

CREATE TABLE five_star_reviews (
	star_rating int);

SELECT * FROM five_star_reviews;
