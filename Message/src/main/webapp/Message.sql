/*
 * web_number 
 * column : email ���� (50) pk
 * 			pw ���� (50) not null
 * 			tel ���� (50) not null
 * 			address ���� (50) not null
*/

CREATE TABLE web_number(
	email varchar2(50) primary key,
	pw varchar2(50) not null,
	tel varchar2(50) not null,
	address varchar2(50) not null
)

select * from WEB_NUMBER

select * from web_number where email = 0 and pw = 0