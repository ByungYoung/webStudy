/*
 * ���̺� �� : memeber
 * �÷� : id(char(30)) pw(char(30)) name(char(30)) age(number)
 * constraint : id = primarykey
 */

create table aimember (
	id varchar2(30) primary key,
	pw varchar2(30),
	name varchar2(30),
	age number
)

insert into aimember values(
	'smart', 'smart', '�ں���', 23
)

select * from aimember

delete from aimember where id = '12'