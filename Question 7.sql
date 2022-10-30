--Question 7: Show the list of player combinations who have never played together

SELECT		P.PlayerID AS 'Player 1', 
			PP.PlayerID AS 'Player 2'
FROM		TblPlayer AS P, 
			TblPlayer AS PP
WHERE		P.PlayerID != PP.PlayerID

EXCEPT

SELECT DISTINCT S.Player , SS.Player
FROM TblScore AS S, TblScore AS SS;