/*number 1*/
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
 /*number 2*/
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
 /*number 3*/
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'
 /*number 4*/
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr>= 2000
 /*number 5*/
SELECT *
FROM nobel
WHERE subject = 'Literature' AND yr>=1980 AND yr<=1989
 /*number 6*/
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                   'Woodrow Wilson',
                   'Jimmy Carter',
                    'Barack Obama')
 /*number 7*/
SELECT winner FROM nobel
WHERE winner LIKE ('John%')
 /*number 8*/
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics'AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)
 /*number 9*/
SELECT * FROM nobel
WHERE subject NOT IN ('Medicine', 'Chemistry') AND yr = 1980
 /*number 10*/
SELECT * FROM nobel
WHERE (subject = 'Medicine' and yr < 1910) OR (subject = 'Literature' and yr>=2004)
/*number 11*/
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG'
/*number 12*/
SELECT * FROM nobel
WHERE winner = 'EUGENE O\'NEILL'
/*number 13*/
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'sir%' ORDER BY yr DESC,winner
/*number 14*/
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner
