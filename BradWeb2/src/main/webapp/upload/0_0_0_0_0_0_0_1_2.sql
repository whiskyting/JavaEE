create database STOCK
on PRIMARY
(name = 資料檔_1,filename = 'C:\stock\datal\資料檔_1.MDF',size=10,maxsize=100,filegrowth=20%),
FILEGROUP [FILEG2] DEFAULT
( NAME =資料檔_2,filename='C:\stock\data2\資料檔_2.ndf',maxsize=1024,filegrowth=10)
log on
(name = 資料檔_LOG,filename = 'C:\stock\log\資料檔_LOG.ldf',size=10,maxsize=100,filegrowth=20%)

CREATE TABLE 訂單格式
(  客戶名稱  varchar(50) NOT NULL,
   單據編號  int NOT NULL ,
   訂購日期  date NOT NULL,
   客戶電話  varchar(14)NOT NULL check(客戶電話 LIKE '(__)____-____'),
   產品名稱  varchar(50) NULL ,
   數量 int NOT NULL ,
   單價 money NOT NULL check (單價<=2000),
   備註 varchar(50) NOT NULL,
   接單業務 varchar(50) NOT NULL)

CREATE TABLE 客戶
(  客戶名稱  varchar(50) NOT NULL,
   信用額度  int NOT NULL ,
   送貨地址  varchar(50) NOT NULL ,
   聯絡電話  varchar(14)NOT NULL check(聯絡電話 LIKE '(__)____-____'))
CREATE TABLE 員工
(  員工姓名 varchar(50) NOT NULL ,
   性別  varchar(10) NOT NULL check (性別='男' or 性別='女'),
   出生日期 date NOT NULL check(出生日期<=DATEADD(year,-16,getdate())and(出生日期>=DATEADD(year,-50,getdate()))),
   電話  varchar(14) NOT NULL check(電話 LIKE '(__)____-____'),
   地址  varchar(50) NOT NULL,
   到職日 date NOT NULL check(到職日<=getdate()),
   薪資 int NOT NULL check (薪資>=25000) default 25000,
   職位 varchar(50) NOT NULL)

CREATE TABLE 產品
(  名稱 varchar(50) NOT NULL PRIMARY KEY,
   數量 int NOT NULL ,
   類別 varchar(50) NOT NULL ,
   單價 money NOT NULL check (單價<=2000)

INSERT 員工 ( 員工姓名,性別,出生日期,電話,地址,到職日,薪資,職位 )
VALUES ('點哥','男', '1980-10-10', '(03)1234-4567','台中市','2000-10-10',45000,'用手點一點'),
	('仟姊','女', '1998-05-05', '(06)1234-7412','台中市某區','2020-10-09',48000,'工程師'),
	('豬哥','男', '1991-06-30', '(04)1234-7413','台北木柵','2019-06-07',50000,'健身教練'),
	('猴哥','男', '1995-05-07', '(01)9632-7214','台中市','2022-01-01',100000,'經理'),
	('信哥','男', '1997-02-01', '(02)6543-1234','台中市','2018-03-01',80000,'補教界型男')

INSERT 客戶 ( 客戶名稱,信用額度,送貨地址,聯絡電話 )
VALUES ('翔哥',10, '台東市', '(01)1234-7469' ),
	('忠原哥',100, '花蓮市', '(02)4567-1234' ),
	('Bing',1000, '桃園市', '(03)7574-1134' ),
	('jerry',20, '新北市', '(04)8874-3641' ),
	('Li',200, '新竹市', '(05)7123-6582' )

INSERT 產品 ( 名稱,數量,類別,單價 )
VALUES ('四季春',1, '瓶裝', 35 ),
	('珍奶',5, '罐裝', 50 ),
	('紅茶拿鐵',15, '鋁箔包', '65' ),
	('蜂蜜奶茶',3, '罐裝', '50' ),
	('烏龍奶',8, '鋁箔包', '55' )



DELETE 員工

SELECT * 
FROM 客戶

SELECT * 
FROM 產品

SELECT * 
FROM 員工