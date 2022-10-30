--Question 5:
-- The two following queries return the same result. Why and what is the difference?

Select * from TblPlayer 
left join TblScore on TblScore.Player = TblPlayer.PlayerID
where TblScore.Player is not nulL

Select * from TblPlayer
right join TblScore on TblScore.Player = TblPlayer.PlayerID and TblScore.Player is not null
where TblScore.Player is not null

-- The 'NOT NULL'constraint set in Query 1 is what makes both queries return the same results. The query is to provide 
-- the details of registered players on the Score table, however, there is a registered Player E who did not partake 
-- in any of the games, therefore, this query should return a NULL. The 'NOT NULL' Constraint set on the Score.Player column 
-- ensures his details do not show.

-- Query 2, on the other hand, is set to show all players who played a game, either they were registered or not. In this case,
-- there are no players with such quality, therefore there will be no NULL value to return. This means that even without the
-- 'NOT NULL' constraint, we would still have the same result. 
