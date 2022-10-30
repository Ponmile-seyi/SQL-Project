-- Question 6:
--The two following queries return the players which have not played any games. In your opinion, which 
-- one is the best and why? Discuss.

Select Distinct TblPlayer.PlayerID, TblPlayer.Name, TblPlayer.LastName from TblPlayer
left join TblScore on TblScore.Player = TblPlayer.PlayerID
where TblScore.Player is nullSelect TblPlayer.PlayerID, TblPlayer.Name, TblPlayer.LastName from TblPlayer
where TblPlayer.PlayerID not in (select distinct TblScore.Player from TblScore)
-- Query 1 is the best query to use because it is believed that when JOINS are used, they make queries run faster
-- than when Subqueries are used. 