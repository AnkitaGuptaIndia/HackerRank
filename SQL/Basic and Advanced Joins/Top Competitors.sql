/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and 
name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the 
hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Hackers Table - The hacker_id is the id of the hacker, and name is the name of the hacker.
Difficulty Table - The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level. 
Challenges Table - The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the 
level of difficulty of the challenge. 
Submissions Table - The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge 
that the submission belongs to, and score is the score of the submission.

*/




SELECT h.hacker_id, h.name
FROM hackers h INNER JOIN Submissions s using(hacker_id)
INNER JOIN challenges c using(challenge_id)
INNER JOIN difficulty d using(difficulty_level)
where s.score = d.score AND c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
ORDER BY count(s.hacker_id) desc, s.hacker_id asc;
