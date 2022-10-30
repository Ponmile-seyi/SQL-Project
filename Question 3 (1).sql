-- Question 3a:
-- The score table is corrupted: a game can only have two players (not more, not less). Write 
-- a query that identifies and only shows the valid games and their winner.

SELECT		S.Game,
			COUNT(S.Player) AS 'Number of Participants', 
			G.Winner
FROM		TblScore AS S
LEFT JOIN	TblGame AS G
		ON	S.Game = G.GameID
GROUP BY	S.Game, G.Winner
HAVING		COUNT(S.Player) = 2;