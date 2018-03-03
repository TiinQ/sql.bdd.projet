use Pistons
go

DELETE CUMUL
DELETE PIECE
go
DELETE STOCK
DELETE LOT
go
DELETE ETAT_LOT
go
DELETE MODELE
DELETE CATEGORIE
DELETE MACHINE
go

INSERT CATEGORIE
VALUES ('PETIT',-0.1,-0.01)
INSERT CATEGORIE
VALUES ('MOYEN',-0.05,0.05)
INSERT CATEGORIE
VALUES ('GRAND',0.01,0.1)
INSERT CATEGORIE
VALUES ('REBUT',null,null)
go

INSERT MODELE
VALUES ('R4', 8.0,0)
INSERT MODELE
VALUES ('R8', 11.0,0)
INSERT MODELE
VALUES ('R10', 9.0,0)
INSERT MODELE
VALUES ('CX3', 15.0,0)
go


INSERT MACHINE
VALUES (1001,0,0)
INSERT MACHINE
VALUES (1002,0,0)
INSERT MACHINE
VALUES (2001,0,0)
INSERT MACHINE
VALUES (2002,0,0)
INSERT MACHINE
VALUES (3001,0,0)
go

INSERT ETAT_LOT
VALUES (1,'Lanc�')
INSERT ETAT_LOT
VALUES (2,'Demarr�')
INSERT ETAT_LOT
VALUES (3,'Lib�r�')
INSERT ETAT_LOT
VALUES (4,'Arr�t�')
go

	
INSERT STOCK
VALUES ('R4', 'PETIT',500 , 100 )	
INSERT STOCK
VALUES ('R4', 'MOYEN',500 , 50 )
INSERT STOCK
VALUES ('R4', 'GRAND',500 , 150 )
INSERT STOCK
VALUES ('R8', 'PETIT',500 , 70 )
INSERT STOCK
VALUES ('R8', 'MOYEN',500 , 200 )
INSERT STOCK
VALUES ('R8', 'GRAND',500 , 80 )
INSERT STOCK
VALUES ('R10', 'PETIT',500 , 80 )
INSERT STOCK
VALUES ('R10', 'MOYEN',500 , 140 )
INSERT STOCK
VALUES ('R10', 'GRAND',500 , 30 )
INSERT STOCK
VALUES ('CX3', 'PETIT',500 , 200 )
INSERT STOCK
VALUES ('CX3', 'MOYEN',500 , 180 )
INSERT STOCK
VALUES ('CX3', 'GRAND',500 , 90 )
	
go	  