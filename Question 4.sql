-- Question 4:
-- Show the score of player "Phil Watertank" for games that he lost. 

WITH TblLoser AS 
				(SELECT TOP 6		S.Game,
									S.Player,
									S.Score,
									RANK() OVER(PARTITION BY S.Game
												ORDER BY S.Score DESC) AS 'Scoreboard',
									CASE WHEN (RANK() OVER(PARTITION BY S.Game
													    	ORDER BY S.Score DESC)) = 1 THEN 'Winner'
																						ELSE 'Loser'
																						END AS 'Position'
				FROM				TblScore AS S
				ORDER BY			(RANK() OVER(PARTITION BY S.Game
												ORDER BY S.Score DESC)) DESC)

SELECT			L.Game,
				L.Player,
				P.Name,
				P.LastName,
				L.Score
FROM			TblLoser AS L
JOIN			TblPlayer AS P
	ON			L.Player = P.PlayerID
WHERE			P.Name = 'Phil' AND P.LastName = 'Watertank';