create database STOCK
on PRIMARY
(name = �����_1,filename = 'C:\stock\datal\�����_1.MDF',size=10,maxsize=100,filegrowth=20%),
FILEGROUP [FILEG2] DEFAULT
( NAME =�����_2,filename='C:\stock\data2\�����_2.ndf',maxsize=1024,filegrowth=10)
log on
(name = �����_LOG,filename = 'C:\stock\log\�����_LOG.ldf',size=10,maxsize=100,filegrowth=20%)

CREATE TABLE �q��榡
(  �Ȥ�W��  varchar(50) NOT NULL,
   ��ڽs��  int NOT NULL ,
   �q�ʤ��  date NOT NULL,
   �Ȥ�q��  varchar(14)NOT NULL check(�Ȥ�q�� LIKE '(__)____-____'),
   ���~�W��  varchar(50) NULL ,
   �ƶq int NOT NULL ,
   ��� money NOT NULL check (���<=2000),
   �Ƶ� varchar(50) NOT NULL,
   ����~�� varchar(50) NOT NULL)

CREATE TABLE �Ȥ�
(  �Ȥ�W��  varchar(50) NOT NULL,
   �H���B��  int NOT NULL ,
   �e�f�a�}  varchar(50) NOT NULL ,
   �p���q��  varchar(14)NOT NULL check(�p���q�� LIKE '(__)____-____'))
CREATE TABLE ���u
(  ���u�m�W varchar(50) NOT NULL ,
   �ʧO  varchar(10) NOT NULL check (�ʧO='�k' or �ʧO='�k'),
   �X�ͤ�� date NOT NULL check(�X�ͤ��<=DATEADD(year,-16,getdate())and(�X�ͤ��>=DATEADD(year,-50,getdate()))),
   �q��  varchar(14) NOT NULL check(�q�� LIKE '(__)____-____'),
   �a�}  varchar(50) NOT NULL,
   ��¾�� date NOT NULL check(��¾��<=getdate()),
   �~�� int NOT NULL check (�~��>=25000) default 25000,
   ¾�� varchar(50) NOT NULL)

CREATE TABLE ���~
(  �W�� varchar(50) NOT NULL PRIMARY KEY,
   �ƶq int NOT NULL ,
   ���O varchar(50) NOT NULL ,
   ��� money NOT NULL check (���<=2000)

INSERT ���u ( ���u�m�W,�ʧO,�X�ͤ��,�q��,�a�},��¾��,�~��,¾�� )
VALUES ('�I��','�k', '1980-10-10', '(03)1234-4567','�x����','2000-10-10',45000,'�Τ��I�@�I'),
	('�a�n','�k', '1998-05-05', '(06)1234-7412','�x�����Y��','2020-10-09',48000,'�u�{�v'),
	('�ޭ�','�k', '1991-06-30', '(04)1234-7413','�x�_��]','2019-06-07',50000,'�����нm'),
	('�U��','�k', '1995-05-07', '(01)9632-7214','�x����','2022-01-01',100000,'�g�z'),
	('�H��','�k', '1997-02-01', '(02)6543-1234','�x����','2018-03-01',80000,'�ɱЬɫ��k')

INSERT �Ȥ� ( �Ȥ�W��,�H���B��,�e�f�a�},�p���q�� )
VALUES ('����',10, '�x�F��', '(01)1234-7469' ),
	('�����',100, '�Ὤ��', '(02)4567-1234' ),
	('Bing',1000, '��饫', '(03)7574-1134' ),
	('jerry',20, '�s�_��', '(04)8874-3641' ),
	('Li',200, '�s�˥�', '(05)7123-6582' )

INSERT ���~ ( �W��,�ƶq,���O,��� )
VALUES ('�|�u�K',1, '�~��', 35 ),
	('�å�',5, '����', 50 ),
	('�������K',15, '�T��]', '65' ),
	('���e����',3, '����', '50' ),
	('�Q�s��',8, '�T��]', '55' )



DELETE ���u

SELECT * 
FROM �Ȥ�

SELECT * 
FROM ���~

SELECT * 
FROM ���u