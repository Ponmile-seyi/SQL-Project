-- Insert into player

INSERT INTO TblPlayer values ('A','Phil','Watertank'),
('B','Eva','Smith'),
('C','John','Wick'),
('D','Bill','Bull'),
('E','Lisa','Owen');

-- Insert Into Game

INSERT INTO TblGame values (1,'A','2017-01-02'),
(2,'A','2016-05-06'),
(3,'B','2017-12-15'),
(4,'D','2016-05-06');


---Disabling Foreign key

ALTER TABLE TblScore NOCHECK CONSTRAINT ALL;

-- Insert Into Values

INSERT INTO Tblscore values (1,1,'A',11),
(2,1,'B',7),
(3,2,'A',15),
(4,2,'C',13),
(5,3,'B',11),
(6,3,'D',9),
(7,4,'D',11),
(8,4,'A',5),
(9,5,'A',11),
(10,6,'B',11),
(11,6,'C',2),
(12,6,'D',5);


--- Enabling Foreign Key
ALTER TABLE TblScore CHECK CONSTRAINT ALL;