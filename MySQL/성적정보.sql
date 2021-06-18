create table tbl_student(
	st_num CHAR(8) PRIMARY KEY,
    st_name VARCHAR(20) NOT NULL,
    st_dept VARCHAR(20) NOT NULL,
    st_grade INT NOT NULL,
    st_tel VARCHAR(15) NOT NULL,
    st_addr VARCHAR(125)
);

select * from tbl_student
where st_num = '20210001';

drop table tbl_student;

create table tbl_score(
	sc_seq  bigint PRIMARY KEY auto_increment,
    sc_stnum CHAR(8) NOT NULL,
    sc_subject VARCHAR(20) NOT NULL,
    sc_score INT NOT NULL
);



drop table tbl_score;

insert into tbl_student
values('20210001','왕감자','컴퓨터공학',3,'010-1111-2222','광주광역시');


insert into tbl_score(sc_stnum, sc_subject, sc_score)
values('20210001', '영어', 79);

delete from tbl_student 
where st_num = '20210001';

use school;

alter table tbl_score
add constraint fk_student
foreign key tbl_score(sc_stnum)
references tbl_student(st_num);

alter table tbl_score drop foreign key fk_student;

create view view_성적정보 as(
select st_num v_num, st_name v_name,
		st_dept v_dept, st_grade v_grade,
		count(sc_subject) v_subject, SUM(sc_score) v_sum,
        ROUND(SUM(sc_score) / count(sc_subject)) v_avg
from tbl_score
	left join tbl_student
		on st_num = sc_stnum
);

drop view view_성적정보;

select * from view_성적정보;







        

