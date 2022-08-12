-- hackers TABLE
CREATE TABLE hackers(
    hacker_id INT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL
);

INSERT INTO hackers(hacker_id, name)
VALUES
(5580, 'Rose'),
(8439, 'Angela'),
(27205, 'Frank'),
(52243, 'Patrick'),
(52348, 'Lisa'),
(57645, 'Kimberly'),
(77726, 'Bonnie'),
(83082, 'Michael'),
(86870, 'Todd'),
(90411, 'Joe');

-- challenges TABLE
CREATE TABLE challenges(
    challenge_id INT PRIMARY KEY,
    hacker_id INT NOT NULL,
    difficulty_level INT
);

INSERT INTO challenges(challenge_id, hacker_id, difficulty_level)
VALUES
(4810, 77726, 4),
(21089, 27205, 1),
(36566, 5580, 7),
(66730, 52243, 6),
(71055, 52243, 2);

-- difficulty TABLE
CREATE TABLE difficulty(
    difficulty_level INT PRIMARY KEY,
    score INT
);

INSERT INTO difficulty(difficulty_level, score)
VALUES
(1, 20),
(2, 30),
(3, 40),
(4, 60),
(5, 80),
(6, 100),
(7, 120);

-- submission TABLE
CREATE TABLE submissions(
    submission_id INT PRIMARY KEY,
    hacker_id INT,
    challenge_id INT,
    score INT
);

INSERT INTO submissions(submission_id, hacker_id, challenge_id, score)
VALUES
(68628, 77726, 36566, 30),
(65300, 77726, 21089, 10),
(40326, 52243, 36566, 77),
(8941, 27205, 4810, 4),
(83554, 77726, 66730, 30),
(43353, 52243, 66730, 0),
(55385, 52348, 71055, 20),
(39784, 27205, 71055, 23),
(94613, 86870, 71055, 30),
(45788, 52348, 36566, 0),
(93058, 86870, 36566, 30),
(7344, 8439, 66730, 92),
(2721, 8439, 4810, 36),
(523, 5580, 71055, 4),
(49105, 52348, 66730, 0),
(55877, 57645, 66730, 80),
(38355, 27205, 66730, 35),
(3924, 8439, 36566, 80),
(97397, 90411, 66730, 100),
(84162, 83082, 4810, 40)
(97431, 90411, 71055, 30);

-- SELECT QUERY
SELECT hacker_id, name
FROM submissions as s 
JOIN hackers as h
    ON s.hacker_id = h.hacker_id
JOIN challenges as c
    ON s.challenge_id = c.challenge_id
JOIN difficulty as d
    ON s.difficulty_level = d.difficulty_level
WHERE s.score >= 100
ORDER BY total number of challenges DESC