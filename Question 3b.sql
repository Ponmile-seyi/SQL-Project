--Question 3b:
--As an additional challenge, you can also display the winner's score. The condition 
--described in Question 3a should still apply.

SELECT		DISTINCT(S.Game),
			G.Winner,
			MAX(S.Score) AS 'Score'
FROM		TblScore AS S
LEFT JOIN	TblGame AS G
		ON	S.Game = G.GameID
GROUP BY	S.Game, G.Winner
HAVING		COUNT(S.Player) = 2;