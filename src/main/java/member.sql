
drop table member;

create table member(
	id varchar(50) primary key,
	pwd varchar(50) not null,
	name varchar(50) not null,
	email varchar(50) unique,
	auth int  -- 관리자인지 아닌지
	
);

select id
from member
where id = 'abc';

select count(*)
from member
where id = 'abc';

-- 둘다 같은 함수

select * from member;