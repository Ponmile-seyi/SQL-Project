--Question 2: Show the average score of each player, even if they didn't play any games.
SELECT	P.PlayerID, 
		P.Name,	
		ISNULL(AVG(S.Score), 0) AS 'Average Score'
FROM	TblPlayer AS P
LEFT JOIN	TblScore AS S
		ON	P.PlayerID = S.Player
GROUP BY P.PlayerID, P.Name;