CREATE TABLE tb_especialidade (
		id SERIAL UNIQUE NOT NULL,
		nome TEXT NOT NULL,
	
		PRIMARY KEY(id)
);

CREATE TABLE tb_especialidade_professor (
  		id SERIAL UNIQUE NOT NULL,
  		id_especialidade INT NOT NULL,
  		id_professor INT not null
);

CREATE TABLE tb_professor (
		id SERIAL UNIQUE NOT NULL,
		nome TEXT NOT NULL,
		data_nascimento TIMESTAMP NOT NULL,
	
		PRIMARY KEY(id)
);

CREATE TABLE tb_turma (
		id SERIAL UNIQUE NOT NULL,
		id_professor INT REFERENCES tb_professor(id),
		nome TEXT NOT NULL,
		turno TEXT NOT NULL,
		serie TEXT NOT NULL,
	
		PRIMARY KEY (id)
);

CREATE TABLE tb_aluno (
		id SERIAL UNIQUE NOT NULL,
		id_turma INT REFERENCES tb_turma(id),
		nome TEXT NOT NULL,
		matricula UUID UNIQUE NOT NULL,
		nome_pai TEXT,
		nome_mae TEXT,
		sexo TEXT,
		data_nascimento TIMESTAMP NOT NULL,
		data_matricula TIMESTAMP NOT NULL,
	
		PRIMARY KEY(id)
);

INSERT INTO tb_especialidade(nome)
VALUES
	('Matemática'), ('História'), ('Geografia'),
	('Português'), ('Química'), ('Física'),
	('Redação'), ('Educação Física'), ('Filosofia'),
		('Sociologia');

INSERT INTO tb_professor(nome,data_nascimento)
VALUES
	( 'Macy Shannon','1956-05-15 00:17:28'),
	( 'Basia Franklin','1980-08-31 19:33:36'),
	( 'Nasim Reeves','1996-05-27 14:06:16'),
	( 'Ronan Houston','1970-06-20 18:38:44'),
	( 'Phoebe Burks','1965-08-19 23:46:13'),
	( 'Iola Luna','1940-02-18 18:06:42'),
	( 'Alan Swanson','1958-04-15 21:12:01'),
	( 'Kiara Clayton','1979-06-08 02:55:20'),
	( 'Malcolm Hanson','1989-02-21 18:07:46'),
	( 'Joel Emerson','1990-12-28 00:26:40');
    
INSERT INTO tb_especialidade_professor (id_especialidade, id_professor)
VALUES
	(1, 1),
    (5, 1),
    (6, 1),
	(2, 2),
    (9, 2),
    (10, 2),
	(3, 3),
	(4, 4),
    (7, 4),
	(5, 5),
	(6, 6),
	(7, 7),
    (4, 7),
	(8, 8),
	(9, 9),
	(10, 10);

INSERT INTO tb_turma(id_professor,nome,turno,serie)
VALUES
	(10,'1A','vespertino','primeira_serie'),
	(9,'2A','matutino','segunda_serie'),
	(8,'1B','matutino','primeira_serie'),
	(7,'5A','matutino','quinta_serie'),
	(6,'7A','vespertino','setima_serie'),
	(5,'8A','noturno','oitava_serie'),
	(4,'2B','noturno','segunda_serie'),
	(3,'1C','vespertino','primeira_serie'),
	(2,'6A','matutino','sexta_serie'),
	(1,'5B','noturno','quinta_serie');

INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(8,'Yuli','10AF3038-E518-927A-9524-B6E7855443D8','Arthur','Alfreda','masculino','27 Jun 2006','8 Jan 2021'),
	(7,'Brennan','B87358EA-D6B8-E6E2-1195-29DDEA1BB324','Ryan','Cynthia','masculino','21 Oct 2015','15 Jan 2021'),
	(5,'Colorado','8D261948-F4EC-0C92-F318-68AC254BA8FC','Baker','Kirsten','masculino','26 Oct 2010','12 Jan 2021'),
	(7,'Myles','38C0B52B-3DE3-910A-542D-584FC65D9B9D','Hunter','Avye','masculino','23 Jan 2003','11 Jan 2021'),
	(7,'Dale','6734639B-4D47-D8CB-C2D1-EB4B5FE0B49E','Stuart','Iliana','masculino','17 Dec 2012','24 Jan 2021'),
	(8,'Lee','4E4ADD87-3095-3AA9-AC73-3CD1D31A2259','Kibo','Ayanna','masculino','7 Oct 2008','18 Jan 2021'),
	(5,'Tiger','15824F94-45DB-9655-8D55-73CEDFB58997','Calvin','Libby','masculino','11 Aug 2012','24 Jan 2021'),
	(8,'Brent','AA2A5664-D29E-29CB-936D-3074C749E66A','Coby','Adara','masculino','24 Jul 2012','26 Jan 2021'),
	(5,'Tiger','28011A19-FDBB-BB41-11CD-315678725718','Bert','Callie','masculino','30 Aug 2010','14 Jan 2021'),
	(8,'Castor','5E69744B-FB3A-5B47-D71E-6C2D639F1158','Austin','Ariana','masculino','3 Sep 2004','26 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(3,'Lewis','9840B7EB-DE27-29C9-88B1-712DE192352D','Wade','Patricia','masculino','6 Sep 2001','24 Jan 2021'),
	(4,'Vernon','2CDD2AC5-8D81-265B-D5F3-1D1CDAD9FEE0','Brennan','Mechelle','masculino','29 Apr 2009','10 Jan 2021'),
	(7,'Brenden','C3AD8F14-796F-2636-C5A6-060AAA3EB84C','Rashad','Jayme','masculino','23 Feb 2001','13 Jan 2021'),
	(4,'Gavin','5236DF60-C4D2-A83E-B66B-7BF16ACC962D','Stuart','Shay','masculino','29 Mar 2007','17 Jan 2021'),
	(1,'Peter','BB6330FE-7D64-7BD4-1E71-0E648A159C63','Prescott','Reagan','masculino','8 Jan 2013','26 Jan 2021'),
	(3,'Porter','D27183C9-26FA-C91E-2B30-D5B954E4648F','Julian','Shaeleigh','masculino','21 Sep 2008','3 Jan 2021'),
	(10,'Leroy','6F3B3B43-A735-2E8D-DE38-3A61C46A9199','Chaney','Risa','masculino','20 Dec 2002','11 Jan 2021'),
	(3,'Camden','532B9698-6D5E-BCA1-882A-45A42CCA16D1','Duncan','Jane','masculino','15 Jul 2012','7 Jan 2021'),
	(3,'Lucas','3489A5D9-EED6-C68C-BEA8-E04DA7445238','Ignatius','Denise','masculino','22 Jan 2002','9 Jan 2021'),
	(7,'Linus','C75A967D-753B-9670-6363-7D6962D38CB5','Jarrod','Veda','masculino','9 Aug 2002','2 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(4,'Erich','CEEEEE84-D477-E16B-68EA-D2802DEB2311','Donovan','Adria','masculino','2 Oct 2010','4 Jan 2021'),
	(6,'Chandler','91242B72-C2A6-527A-420C-E72629B0D6BF','Axel','Bethany','masculino','10 Jun 2015','11 Jan 2021'),
	(9,'Magee','A2355949-2D2E-C8F3-D990-B10A01D9151E','Phelan','Cheyenne','masculino','9 Feb 2000','24 Jan 2021'),
	(10,'Clinton','55282F88-54B7-ACA0-244A-7675B0920C3B','Elton','Virginia','masculino','24 May 2005','20 Jan 2021'),
	(2,'Omar','A9A5EE96-D9BB-4435-26BF-E7837CDD1E31','Burton','Velma','masculino','16 Mar 2009','26 Jan 2021'),
	(10,'Theodore','61B57D31-EAB1-39B5-0F39-8965B65B550F','Colin','Haviva','masculino','14 Jul 2007','9 Jan 2021'),
	(7,'Mason','2C7858E7-64BA-010A-C9FE-BD9E9B638EE4','Burton','Judith','masculino','16 Sep 2000','6 Jan 2021'),
	(6,'Hedley','C78F8C6B-3AE5-3A95-89C6-C8FCEB3A7779','Lawrence','Megan','masculino','30 Apr 2003','10 Jan 2021'),
	(5,'Dorian','32F6C659-97E1-CA69-079B-28F12A6FDA2B','Nash','Nelle','masculino','2 Nov 2000','23 Jan 2021'),
	(1,'Silas','84B9661D-5A1A-EB32-A26F-563433D716E2','Zachary','Anne','masculino','19 Jan 2011','15 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(10,'Keaton','95DF8F2D-3968-491D-1F38-7E1A153A7687','Ira','Desiree','masculino','12 Jun 2005','5 Jan 2021'),
	(4,'Clark','1A148E1E-032D-8DD8-1146-4EF43424FDDC','Graiden','Katelyn','masculino','22 Oct 2004','17 Jan 2021'),
	(8,'Declan','CEF38D45-979F-36EB-E0FB-F90207BD5DED','Lane','Gillian','masculino','3 Nov 2013','6 Jan 2021'),
	(2,'Duncan','1DC32042-2DB2-22DE-E49B-59DC3E057DAB','Leroy','Lacota','masculino','21 Feb 2001','13 Jan 2021'),
	(9,'Malik','FBAA33C9-6B89-E5A2-5772-7D3711BD8FA3','Rudyard','Celeste','masculino','8 Apr 2007','3 Jan 2021'),
	(9,'Bert','0692DCFB-5041-F74A-214C-55B4E714A16D','Matthew','Alana','masculino','3 Nov 2005','7 Jan 2021'),
	(4,'Cody','6674D4B1-616C-81BE-76AD-60252E4B76E6','Prescott','Xantha','masculino','28 Jan 2002','16 Jan 2021'),
	(10,'Cullen','939367D9-6596-9912-93AC-92E9AA42A30C','Leroy','Alma','masculino','30 Nov 2003','16 Jan 2021'),
	(6,'Micah','8EC716B6-BEC3-69AD-4DD2-1E56E14B765E','Julian','Debra','masculino','27 Apr 2012','2 Jan 2021'),
	(4,'Jamal','928E0BAA-E553-1B31-F2E2-90E4493F4DAB','Jakeem','Aurelia','masculino','23 Mar 2000','23 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(5,'Quentin','3DF73979-49E4-08DF-D039-3C5ED694D2FE','Ali','Chiquita','masculino','10 Aug 2012','16 Jan 2021'),
	(6,'Peter','179BC87A-487A-DACC-B604-4D0246053B6B','Declan','Eleanor','masculino','12 Mar 2007','21 Jan 2021'),
	(5,'Jerome','B242BC9B-5817-9C68-CA51-55B004161816','Logan','Dora','masculino','11 Jan 2002','12 Jan 2021'),
	(3,'Ryder','233A46E2-36AC-FB4B-7211-12CAB1BE25E2','Ira','Cheyenne','masculino','2 Mar 2009','18 Jan 2021'),
	(7,'Elmo','99AA33E6-B41E-D25B-4545-F1F28DA1ED84','Alvin','Shelly','masculino','21 Oct 2003','21 Jan 2021'),
	(9,'Prescott','3962A81E-4232-A4EB-2D39-1C7882C85948','Cole','Danielle','masculino','16 Mar 2002','5 Jan 2021'),
	(4,'Forrest','8D367191-A85F-8A94-C5A5-8C335E71E932','Patrick','Cora','masculino','22 May 2009','22 Jan 2021'),
	(2,'Abbot','ECE961D8-180D-B869-046E-059C708986DE','Mark','April','masculino','21 Jan 2009','16 Jan 2021'),
	(8,'Wesley','1934DC89-6E78-A35E-2EA2-EB3E8158EE9B','Vance','Jena','masculino','1 Sep 2011','17 Jan 2021'),
	(5,'Tyler','AC26D9C0-C3CC-E954-9688-8BD59AC5807E','Merrill','Justine','masculino','14 Sep 2002','24 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(1,'Lance','43298F23-19B7-9D93-A538-8BE6F0798857','Carter','Xantha','masculino','15 Feb 2003','10 Jan 2021'),
	(2,'Vaughan','E242CB44-DC68-8DBC-15EE-7363D5ECFFED','Myles','Olympia','masculino','2 Apr 2015','14 Jan 2021'),
	(6,'Myles','6469C26E-4178-ACD4-C7C2-3396AD2E5647','Acton','Stacy','masculino','1 Aug 2013','2 Jan 2021'),
	(2,'Hedley','D09D39A5-BF44-A7AE-8AB4-EEE1C73A2D5D','Buckminster','Genevieve','masculino','2 Dec 2006','3 Jan 2021'),
	(4,'Todd','FCD425CC-BA2C-BF43-9179-BA4597EB6FC8','Hoyt','Irene','masculino','21 Jun 2013','18 Jan 2021'),
	(7,'Uriah','BB319C47-6F48-584C-750B-61D6BA77D4E2','Cameron','Brenda','masculino','22 Sep 2009','24 Jan 2021'),
	(8,'Laith','675EB169-7816-D6C7-1A8D-C29B62A68846','Callum','Sharon','masculino','24 Jul 2007','4 Jan 2021'),
	(4,'Luke','7B563576-A7B4-8BC0-8CBA-3BA3A7B888AB','Julian','MacKensie','masculino','17 Dec 2009','3 Jan 2021'),
	(3,'Zahir','CB50069D-293C-E263-EA3D-CCDEC02C9F7C','Zahir','Naomi','masculino','4 Jul 2015','17 Jan 2021'),
	(6,'Christian','646F9B2E-DE84-6235-6949-93BA1D13EB3D','Felix','Nora','masculino','20 Feb 2001','12 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(2,'Carter','B27F7C00-9725-C532-ED7B-F718D2ECBDDD','Deacon','Serena','masculino','30 Jul 2014','18 Jan 2021'),
	(4,'Merrill','96D2327A-B527-1E03-D902-F6B696D21C46','Dorian','Janna','masculino','30 Nov 2009','3 Jan 2021'),
	(9,'Chadwick','8818EC94-F54E-B9D9-55DA-AD75F4E0DD33','Amir','Ora','masculino','19 Jan 2012','16 Jan 2021'),
	(9,'Jin','8F7E342C-8449-3DF7-818E-40EEA9788D57','Otto','Ariana','masculino','15 Mar 2007','13 Jan 2021'),
	(3,'Tanek','8C04E9F9-8855-65DC-3F5F-9924C2DBD817','Clinton','Bianca','masculino','14 Aug 2007','11 Jan 2021'),
	(4,'Amal','2AE3B72F-B527-0DAA-C726-7F5994FA0E97','Silas','Vielka','masculino','27 Aug 2007','25 Jan 2021'),
	(7,'Kane','5BBA7DAE-9739-D0D2-9625-2CB32E6E8514','Chadwick','Aimee','masculino','29 Oct 2003','24 Jan 2021'),
	(10,'Philip','293CF9C3-5DBD-E209-EC21-1D05AA65416B','James','Sylvia','masculino','15 May 2013','14 Jan 2021'),
	(5,'Brendan','AAD7E1E9-87A1-5B54-6A52-E0ADA82B412C','Gabriel','Lenore','masculino','4 Sep 2004','9 Jan 2021'),
	(5,'Amal','C4AD2CCE-EED6-807D-38FD-921FD1956E68','Tobias','Sonya','masculino','4 Aug 2014','7 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(2,'Jamal','D369A062-3585-1C52-D832-2D02DAF5A3E9','Aidan','Vielka','masculino','29 Jul 2012','6 Jan 2021'),
	(7,'Benedict','14EE6AE3-B0AE-633D-784B-F24533CEA88F','Elton','Molly','masculino','23 Jun 2000','23 Jan 2021'),
	(4,'Jackson','97CDEBE1-E31E-C2D1-39CD-AF4B867839CE','Grant','Robin','masculino','27 Mar 2011','6 Jan 2021'),
	(8,'Erasmus','C114223C-CA6E-D533-9823-C3D4A5C73C87','Nicholas','Keelie','masculino','9 Aug 2001','22 Jan 2021'),
	(3,'Brent','423EA690-8964-77FB-F4E1-1E1D77FFF4E4','Graham','Kerry','masculino','23 Apr 2007','12 Jan 2021'),
	(8,'Nolan','A4D368B2-C597-CB53-AA7D-BAB178451715','Fulton','Eleanor','masculino','27 Nov 2002','12 Jan 2021'),
	(7,'Isaac','EB927FA4-FCE8-12CA-3F61-B6FB0818F755','Simon','Rosalyn','masculino','9 Apr 2002','22 Jan 2021'),
	(1,'Buckminster','5597568A-089A-C838-7B79-51D2A6DA2281','Aristotle','Clare','masculino','13 Mar 2004','16 Jan 2021'),
	(2,'Kyle','D31E8D85-B831-A092-C8A6-6FFD348D1E54','Odysseus','Shannon','masculino','27 Jul 2004','13 Jan 2021'),
	(4,'Julian','5ED9DDFF-443B-653D-52AB-54FB148EF372','Raymond','Serina','masculino','13 Apr 2001','25 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(3,'Zahir','8B4CFCE3-12AA-1526-6DA9-6C74E022BDFD','Malcolm','Yvonne','masculino','18 Aug 2011','25 Jan 2021'),
	(2,'Jared','BD2B90C5-D133-438A-62B5-5D9CF6412612','Donovan','Galena','masculino','14 Apr 2004','13 Jan 2021'),
	(2,'Lewis','3D3A4ED8-DD52-DEC2-F5F8-2F86EF7B9338','Lionel','Fleur','masculino','4 Jan 2006','23 Jan 2021'),
	(10,'Lamar','371651F6-4260-9A93-DA73-DA4C637D973A','Ian','Kylan','masculino','8 Jul 2005','1 Jan 2021'),
	(9,'Plato','733FF758-E9DA-4D7A-F26D-9B43AE4EE889','Steven','Aurelia','masculino','2 Aug 2002','4 Jan 2021'),
	(1,'Calvin','860EDB43-04B4-DD9C-2347-B31DD97CAADC','Jelani','Maite','masculino','29 Mar 2015','20 Jan 2021'),
	(8,'Erich','EA35785D-0DB5-E0CD-8EE4-297DBA9508A7','Christopher','Bree','masculino','8 Oct 2002','15 Jan 2021'),
	(8,'Ray','869DCB89-0D9D-8B91-3E6C-DA98F4962AE5','Fulton','Brooke','masculino','8 Jul 2000','24 Jan 2021'),
	(8,'Ivor','E40A1B82-9E45-7BB9-3EAC-2B8A755C4592','Drake','Charlotte','masculino','29 Aug 2015','19 Jan 2021'),
	(5,'Malachi','3780D5B2-D142-617E-7B8D-3E63969DAE77','Ashton','Nelle','masculino','15 Jun 2013','20 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(3,'Perry','16D9C6AE-3DBC-68A9-BECE-262B4BE711CD','Ryan','Unity','masculino','20 Apr 2012','20 Jan 2021'),
	(2,'Dexter','BE7739B5-D1E4-EE7A-7547-C7B687CB7A02','Nathan','Remedios','masculino','10 Oct 2007','16 Jan 2021'),
	(8,'Gareth','C92EBCCE-7945-A78A-4EDD-3B8A4531AC04','Oleg','Doris','masculino','30 Jun 2008','21 Jan 2021'),
	(3,'Brendan','34769B14-C1E8-4584-1ED7-E8B91362AA2E','Emmanuel','Zoe','masculino','11 Nov 2004','6 Jan 2021'),
	(7,'Damon','915A78ED-6824-434C-E3D9-5C8234ECD339','Vladimir','Basia','masculino','2 Apr 2011','11 Jan 2021'),
	(3,'Herrod','4BB69424-393C-DD3C-3D6C-386EB57F0B09','Lucian','Mara','masculino','14 Apr 2008','24 Jan 2021'),
	(1,'Fuller','9BEE9E90-6C9B-AC32-2819-647264D333B1','Brandon','Adena','masculino','27 Jun 2001','13 Jan 2021'),
	(3,'Lev','5DE2416E-6B46-D612-8991-861C3F512D63','Erasmus','Charity','masculino','12 Feb 2004','23 Jan 2021'),
	(10,'Ian','8A94D22D-448A-B848-B273-9F63EEA5E748','David','Astra','masculino','4 Jun 2014','10 Jan 2021'),
	(6,'Noah','1ABCC064-82D2-EC7B-B426-677E53CE11C2','Craig','Shaine','masculino','29 Jan 2000','25 Jan 2021');

INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(4,'Unity','8DAA475C-6725-2B0D-74EF-CAEC64072156','Blaze','Carly','feminino','27 Feb 2004','14 Jan 2021'),
	(7,'Bethany','4BBF3E83-C779-E90D-DCA8-B4F5E88AB11F','Tate','May','feminino','1 Sep 2004','21 Jan 2021'),
	(5,'Cassady','7ABBD275-5BD4-D9AC-1DB1-44182BD4E654','Lance','Jeanette','feminino','4 May 2003','22 Jan 2021'),
	(4,'Velma','4DBFFA1A-5D3B-CCDE-E9D6-13B45BD455B4','Jason','Jessica','feminino','4 Apr 2011','24 Jan 2021'),
	(10,'Justina','C8AA8D75-E848-5A81-9D51-5AD683836918','Martin','Donna','feminino','6 Oct 2000','24 Jan 2021'),
	(7,'Ivana','5C66163D-E548-F674-B847-24899217B750','Arthur','Rhonda','feminino','14 Oct 2014','13 Jan 2021'),
	(2,'Mara','1CD63B63-235C-C737-D9F9-B1DBD28CE6ED','Tanek','Xandra','feminino','18 Aug 2001','26 Jan 2021'),
	(2,'Colette','A59814A8-4D57-5B79-EF90-8520CB2EC92E','Keegan','Chanda','feminino','10 Oct 2012','2 Jan 2021'),
	(3,'Iris','8AE4F502-23B4-84B7-C8E6-337B59B6B66F','Cyrus','Cally','feminino','21 Jun 2014','2 Jan 2021'),
	(10,'Lesley','000C7016-1351-B0AE-C2B1-1873BA825516','Barclay','Debra','feminino','28 Nov 2002','9 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(7,'Astra','42178B96-B433-CF26-8A81-A36C7EB71456','Finn','Rylee','feminino','25 Dec 2000','23 Jan 2021'),
	(3,'Winter','BA837444-205F-A4DA-6A48-8C0AAAAF6546','Caldwell','Brianna','feminino','27 Jul 2000','13 Jan 2021'),
	(9,'Jeanette','BD804D2A-58DE-6016-BCE2-A2F43B343D91','Caldwell','Iona','feminino','26 Aug 2009','7 Jan 2021'),
	(3,'Nichole','6E91BACC-67C3-B951-C5AC-BDBCCCAB39DF','Richard','Amena','feminino','14 Nov 2000','26 Jan 2021'),
	(6,'Paula','5ADBC1C4-F64D-0634-97E9-E21E4560D4E1','Dillon','Juliet','feminino','31 Dec 2001','8 Jan 2021'),
	(10,'Xena','CB09C935-FB74-5C4B-2847-1CD6DD29AA98','Alec','Sacha','feminino','3 Nov 2007','25 Jan 2021'),
	(8,'Chiquita','BF833125-DF57-5514-DC69-AA5EF14DD988','Herrod','Unity','feminino','9 Mar 2006','2 Jan 2021'),
	(9,'Alyssa','D8DC3571-A2F9-EE5A-B114-12BEAC58D444','Quinlan','Tana','feminino','10 Oct 2009','24 Jan 2021'),
	(2,'Charde','59AEDDC0-D4E8-B402-6D77-ADE4E27EA4C7','Brent','Tana','feminino','7 Sep 2010','3 Jan 2021'),
	(1,'Aileen','44AF2932-6D78-6F59-68AD-9D91E1B0BBEA','Matthew','Kiona','feminino','28 Jun 2002','17 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(9,'Lilah','1DA06D6F-F9C0-D4BC-8B81-E0880CB051E2','Conan','Megan','feminino','18 Mar 2005','3 Jan 2021'),
	(2,'Wilma','0081112C-D74A-9939-CF61-9294D173EBE1','Jermaine','Georgia','feminino','5 Jun 2009','14 Jan 2021'),
	(3,'Claire','06A38834-994A-2252-D49A-7BE2F32E28E7','Gage','Hermione','feminino','18 May 2005','19 Jan 2021'),
	(6,'Alyssa','6434ECFE-4A32-2EDB-4B05-5646B2E5DB53','Valentine','Quinn','feminino','18 Jul 2013','26 Jan 2021'),
	(9,'Halla','85EE7685-AE47-ADF5-ED9D-1290DCE9A7E5','Jerry','Delilah','feminino','26 Jun 2009','15 Jan 2021'),
	(10,'Mechelle','E931EFA3-B1DA-3B2A-5752-19B39A773CBB','Lester','Brynn','feminino','13 Mar 2005','25 Jan 2021'),
	(2,'Stephanie','91A1386E-B217-103A-89B5-83BAF7E11DD4','Kuame','Brenda','feminino','29 Apr 2006','12 Jan 2021'),
	(7,'Pamela','AC311BC2-28AA-C909-731A-82733B40354F','Rajah','Inga','feminino','24 Jun 2014','9 Jan 2021'),
	(5,'Fleur','289C2F79-4A39-C062-A982-45C5919D2E4F','Scott','Lee','feminino','21 Sep 2008','16 Jan 2021'),
	(6,'Noelle','33584D98-B952-8982-75DC-9E10A8C12667','Peter','Imani','feminino','10 Dec 2007','23 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(6,'Veronica','26EF5637-EB8A-DC8B-86C7-7160E6825DEC','Honorato','Regan','feminino','24 Jul 2002','14 Jan 2021'),
	(9,'Emerald','179BA18B-87F7-86F7-A42B-C824CB2C36EC','Camden','Linda','feminino','25 Apr 2004','8 Jan 2021'),
	(9,'Virginia','8E9A8EF9-C1DE-43B5-4A40-73C688619BD6','Steel','Quin','feminino','9 Jun 2003','19 Jan 2021'),
	(2,'Colleen','E57C2C65-EE7B-86DD-F5D8-D8B9C9A374EE','Caldwell','Tashya','feminino','26 Oct 2011','21 Jan 2021'),
	(8,'Autumn','23E63751-B6A6-50FD-56B5-DD6594946168','Kane','Desirae','feminino','19 Jun 2005','5 Jan 2021'),
	(4,'Lysandra','7CDC64C3-EC4D-A297-7977-15EA4C734B9A','Oscar','Daria','feminino','6 Apr 2002','25 Jan 2021'),
	(10,'Yuri','E129B062-7C83-862B-2401-A28A8B91DA9A','Lyle','Kalia','feminino','4 Dec 2002','12 Jan 2021'),
	(3,'Jaquelyn','B96709FB-9216-B7C7-6455-779A8DE7416B','Hammett','Shelly','feminino','30 Nov 2015','23 Jan 2021'),
	(8,'Jayme','DCE30341-D6BD-5D53-ED11-1672D385E6E5','Leroy','Katell','feminino','20 Sep 2003','22 Jan 2021'),
	(8,'Melissa','9E4C4D8D-2BA0-4FF4-DF96-DAFD9BBA53D1','Alec','Yoko','feminino','19 Apr 2006','21 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(9,'Whitney','BE51BA10-C2A6-47E5-5DD1-D228CCA3129B','Brent','Zia','feminino','12 Dec 2001','24 Jan 2021'),
	(4,'Adria','76C52C68-3B54-4AA0-13C4-5D2443A42475','Akeem','Regan','feminino','24 Mar 2011','1 Jan 2021'),
	(7,'Anastasia','9421C96D-1C5C-7E7E-4017-6E7A6AAE199C','Reuben','Lavinia','feminino','26 Mar 2015','4 Jan 2021'),
	(3,'Keiko','539A1206-E643-3CC5-6785-C9E9DC62E898','Hoyt','Nyssa','feminino','29 May 2007','7 Jan 2021'),
	(10,'Olympia','2B66B876-3511-EF16-1B7A-DB0C16BA0AB4','Cairo','Rhonda','feminino','30 Jul 2008','11 Jan 2021'),
	(6,'Doris','7683319C-7343-8D8B-A891-E916AD12B9DA','Tiger','Jasmine','feminino','15 Aug 2008','11 Jan 2021'),
	(3,'Mona','7ACB68A3-3B9D-E078-219C-17BC47CD3E64','Dominic','Hollee','feminino','25 Feb 2010','9 Jan 2021'),
	(4,'Courtney','FE47E0D8-9610-81BE-B36C-FAEBF14A8253','Zachary','Celeste','feminino','1 Oct 2003','22 Jan 2021'),
	(9,'India','D8CD4A8A-B894-D634-6076-C4DD098A4D22','Allistair','Isadora','feminino','12 Nov 2001','13 Jan 2021'),
	(5,'Nell','1E297A62-2B37-7573-C82A-93C6CE7773D7','Gregory','Rhoda','feminino','4 Aug 2013','16 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(8,'Lacey','D66E3F98-19BD-AB48-E2BC-C4B9B298C881','Brenden','Orla','feminino','25 Jan 2000','13 Jan 2021'),
	(2,'Sonia','A7AC97BE-99B8-A9F2-458C-6528B7D638CA','Ahmed','Rae','feminino','13 Dec 2013','7 Jan 2021'),
	(3,'September','DF090016-1B34-B183-F644-9C42C73C93A8','Hyatt','Harriet','feminino','7 Dec 2007','13 Jan 2021'),
	(7,'Astra','EBA0A93C-7B21-187B-9A14-E2425CDE5BB5','Julian','Jeanette','feminino','15 Nov 2008','22 Jan 2021'),
	(8,'Larissa','517171FA-7AB1-3157-A25A-C63DAB454DDE','Hammett','Octavia','feminino','16 Mar 2009','5 Jan 2021'),
	(10,'Ocean','2CAA899D-A0E1-6139-ED7C-C6382436C694','Bradley','Rhoda','feminino','6 Jun 2001','10 Jan 2021'),
	(9,'Quon','F29E8869-A776-77DC-C989-D2492CB85F4D','Nehru','Lila','feminino','8 Dec 2002','20 Jan 2021'),
	(10,'Jena','9A90AD97-0A96-9D77-BD4A-E15C5F956C9D','Thane','Rachel','feminino','11 Jan 2012','18 Jan 2021'),
	(4,'Inga','01871625-710D-8968-792B-825B6E5E28C8','Steven','Gloria','feminino','2 Dec 2010','20 Jan 2021'),
	(3,'Stacey','61C29ECE-B769-6996-4B15-1C126BB42E6B','Stuart','Rylee','feminino','2 Aug 2003','20 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(9,'Kaye','80FBEA3D-D8AD-8C2A-20D2-4E34CEAB1CE1','Xenos','Fay','feminino','30 Apr 2001','17 Jan 2021'),
	(2,'Calista','1D0E3D1E-3696-0188-71FF-FC8884EF76BA','Orlando','Mira','feminino','25 Dec 2004','11 Jan 2021'),
	(9,'Kirestin','4CFDFECB-5A8B-CBC8-E2B9-6D2E56920B8A','Martin','Tatyana','feminino','15 Jul 2007','12 Jan 2021'),
	(8,'Raven','4921E3EE-BD9E-50B4-DACD-7BE732649812','Tyler','Hadassah','feminino','24 Jan 2015','4 Jan 2021'),
	(9,'Macy','537AC74A-DB2B-6EF3-7E0F-D5E21FC23DC0','Joel','Yoshi','feminino','3 Feb 2014','26 Jan 2021'),
	(2,'Evelyn','195B7475-C6A2-C515-8BA3-81CE792A94CA','Lucas','Basia','feminino','1 May 2000','16 Jan 2021'),
	(4,'India','3D9E7F6E-C4E6-2B3B-7DE8-EBC6187A622C','Marsden','Lillith','feminino','21 Apr 2015','9 Jan 2021'),
	(7,'Chastity','1A328746-B23E-E072-97B7-01316486366D','Alden','Ila','feminino','6 Oct 2003','3 Jan 2021'),
	(3,'Audrey','494A3859-21A8-80A3-0452-84964D73BD47','Declan','Zelda','feminino','4 Jul 2001','22 Jan 2021'),
	(5,'Leandra','E1C8C1A1-0F21-7998-A49A-0792394A7937','Mohammad','Lenore','feminino','15 Nov 2012','16 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(7,'Deborah','1A564141-D846-75FB-B54E-B3FDB43AAFB8','Brock','Jescie','feminino','22 Oct 2001','14 Jan 2021'),
	(2,'Yvonne','B9AAD926-36B8-69E6-E991-CA9E33EB9171','Joseph','Moana','feminino','24 Oct 2014','4 Jan 2021'),
	(10,'Maxine','062C6EE3-1C33-5B89-6BD3-2393877C0CD4','Adrian','Leila','feminino','5 Apr 2008','18 Jan 2021'),
	(8,'Dominique','035DE961-1879-44D9-F8B6-55E9562DD5D7','Grady','Amber','feminino','22 Sep 2000','7 Jan 2021'),
	(2,'Ginger','03A6B76A-B184-E62D-928E-767126C4362B','Ishmael','Chava','feminino','27 Sep 2009','9 Jan 2021'),
	(10,'Willow','BD3042A1-F9E3-DD65-946B-1752FBBE694D','Berk','Desiree','feminino','25 Apr 2014','16 Jan 2021'),
	(7,'Keelie','8D99FBE4-AF6B-E75D-8D8A-FB6A89E1EF2D','Kevin','Sandra','feminino','17 Apr 2000','16 Jan 2021'),
	(5,'Kevyn','E3C1BEC1-AE97-184B-6571-9E01ABB434BE','Emerson','Katelyn','feminino','25 Oct 2007','19 Jan 2021'),
	(9,'Naomi','7B7174E3-3461-16A4-442C-9240F723701E','Tobias','Jordan','feminino','27 Feb 2012','20 Jan 2021'),
	(9,'Paloma','27999C67-757B-7EB7-4557-AB0D2C668B65','Fulton','Vivian','feminino','31 Aug 2006','13 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(5,'Brynne','0E2B6A7A-ACBD-ABA8-1D59-D9676863F547','Cody','Meredith','feminino','28 Apr 2004','19 Jan 2021'),
	(3,'Cassidy','0606D292-EDFC-4CF1-6C9B-A333FC632DDD','Tyler','Julie','feminino','30 Aug 2004','4 Jan 2021'),
	(3,'Dawn','653D5A76-D6D7-5A51-126A-552DFEED3EED','Ahmed','Venus','feminino','14 Aug 2010','3 Jan 2021'),
	(9,'Madeline','8E22F751-6C8A-8E5C-E467-844DA6E55341','Murphy','Hayfa','feminino','17 Apr 2005','3 Jan 2021'),
	(2,'Briar','39697A5E-1E8E-4204-5935-D52549D2EE21','Noah','Ursula','feminino','29 Jan 2007','10 Jan 2021'),
	(9,'Liberty','63FED13E-9785-72AD-B755-D645CA0CC3C9','Merrill','Kelly','feminino','30 May 2010','7 Jan 2021'),
	(10,'Nayda','1B4BD569-695F-A93E-CD51-3995A76EAC78','Lamar','Mona','feminino','14 Sep 2006','9 Jan 2021'),
	(1,'Bertha','E1D6C169-5EE5-E5EC-39CC-3C98E81726CD','Nehru','Unity','feminino','21 Jan 2001','20 Jan 2021'),
	(7,'Karen','CC5179B4-53EF-41AA-D67B-39B3B82FD5B2','Zane','Martina','feminino','17 Nov 2006','11 Jan 2021'),
	(2,'Willow','24BF3949-5E43-9B43-CF5B-82581B61B11E','Coby','Whitney','feminino','16 Apr 2005','25 Jan 2021');
INSERT INTO tb_aluno (id_turma,nome,matricula,nome_pai,nome_mae,sexo,data_nascimento,data_matricula)
VALUES
	(1,'Kaitlin','F31254A3-3B66-22A8-31A2-988ECB224CBB','Alan','Kitra','feminino','3 Feb 2014','11 Jan 2021'),
	(2,'Rina','887E2957-C131-AB3E-019F-A34725B62AD6','Hilel','Nita','feminino','6 Oct 2000','12 Jan 2021'),
	(3,'Myra','ED1A3A86-93FD-A3DD-4716-A78D3BE49169','Dante','Abigail','feminino','14 Dec 2005','26 Jan 2021'),
	(9,'Irene','2E3649C8-1D63-D581-4E75-7D171AB87C83','Rahim','Delilah','feminino','19 Nov 2007','6 Jan 2021'),
	(9,'Rose','D0589FDC-91AD-ECD6-F576-E5A04B9452EB','Len','Rose','feminino','25 Aug 2004','25 Jan 2021'),
	(2,'Melodie','E5AC325B-9C86-267A-CC35-B5E83617C94E','Byron','Noel','feminino','29 Sep 2001','3 Jan 2021'),
	(5,'Melodie','0E9672ED-B16D-49A9-94D1-32C4DF372ED1','Channing','Adena','feminino','19 Feb 2004','18 Jan 2021'),
	(2,'Rhea','6584EA35-2C2D-4C45-9B3E-B90DB9998884','Colin','Suki','feminino','3 Jan 2006','10 Jan 2021'),
	(6,'Medge','C160BABD-D823-BEA6-7D80-43C1228AF1E1','Seth','Zephr','feminino','3 Jun 2002','15 Jan 2021'),
	(5,'Michelle','3CA5CEE1-FBCB-1D20-380C-BCCD969167D3','Clarke','Sybil','feminino','19 Oct 2006','23 Jan 2021');
