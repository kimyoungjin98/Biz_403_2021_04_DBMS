CREATE TABLE tbl_student(
    st_num	CHAR(5)		PRIMARY KEY,
    st_name	nVARCHAR2(20)	NOT NULL,	
    st_tel	VARCHAR2(20) NOT NULL,
    st_addr	nVARCHAR2(125),
    st_grade CHAR(1)	NOT NULL,
    st_dpcode	CHAR(4)	NOT NULL
 	);
    
CREATE TABLE tbl_dept(
    dp_code	CHAR(5)		PRIMARY KEY,
    dp_name	nVARCHAR2(20)	NOT NULL,	
    dp_prof	nVARCHAR2(20)	NOT NULL,
    dp_tel	VARCHAR2(20)
    );
    
DROP TABLE tbl_student;
DROP TABLE tbl_dept;
DROP TABLE tbl_score;
DROP TABLE tbl_subject;

CREATE TABLE tbl_score(
    sc_seq NUMBER PRIMARY KEY,
    sc_num	CHAR(5)	NOT NULL,
    sc_kor	nVARCHAR2(2)	NOT NULL,
    sc_score	NUMBER	NOT NULL
);

CREATE TABLE tbl_subject(
    sb_sbnum CHAR(5) PRIMARY KEY,
    sb_sub nVARCHAR2(10) NOT NULL,
    sb_prof nVARCHAR2(3) NOT NULL
);

----------------------------------------------------

CREATE TABLE "tbl_student" (
	"st_num"	CHAR(5)		NOT NULL,
	"dp_code"	CHAR(4)		NOT NULL,
	"st_name"	nVARCHAR2(20)		NULL,
	"st_tel"	VARCHAR2(20)		NULL,
	"st_addr"	nVARCHAR2(125)		NULL,
	"st_grade"	NUMBER		NULL
);

CREATE TABLE "tbl_dept" (
	"dp_code"	CHAR(4)		NOT NULL,
	"dp_name"	nVARCHAR2(20)		NULL,
	"dp_pro"	nVARCHAR2(20)		NULL,
	"dp_tel"	VARCHAR2(5)		NULL
);

CREATE TABLE "tbl_subject" (
	"sb_code"	CHAR(5)		NOT NULL,
	"sb_name"	nVARCHAR2(20)		NULL,
	"sb_prof"	nVARCHAR2(20)		NULL
);

CREATE TABLE "tbl_score" (
	"sc_seq"	NUMBER		NOT NULL,
	"st_num"	CHAR(5)		NOT NULL,
	"dp_code"	CHAR(4)		NOT NULL,
	"sb_code"	CHAR(5)		NOT NULL,
	"sc_score"	NUMBER		NULL
);

ALTER TABLE "tbl_student" ADD CONSTRAINT "PK_TBL_STUDENT" PRIMARY KEY (
	"st_num",
	"dp_code"
);

ALTER TABLE "tbl_dept" ADD CONSTRAINT "PK_TBL_DEPT" PRIMARY KEY (
	"dp_code"
);

ALTER TABLE "tbl_subject" ADD CONSTRAINT "PK_TBL_SUBJECT" PRIMARY KEY (
	"sb_code"
);

ALTER TABLE "tbl_score" ADD CONSTRAINT "PK_TBL_SCORE" PRIMARY KEY (
	"sc_seq",
	"st_num",
	"dp_code",
	"sb_code"
);

ALTER TABLE "tbl_student" ADD CONSTRAINT "FK_tbl_dept_TO_tbl_student_1" FOREIGN KEY (
	"dp_code"
)
REFERENCES "tbl_dept" (
	"dp_code"
);

ALTER TABLE "tbl_score" ADD CONSTRAINT "FK_tbl_student_TO_tbl_score_1" FOREIGN KEY (
	"st_num"
)
REFERENCES "tbl_student" (
	"st_num"
);

ALTER TABLE "tbl_score" ADD CONSTRAINT "FK_tbl_student_TO_tbl_score_2" FOREIGN KEY (
	"dp_code"
)
REFERENCES "tbl_student" (
	"dp_code"
);

ALTER TABLE "tbl_score" ADD CONSTRAINT "FK_tbl_subject_TO_tbl_score_1" FOREIGN KEY (
	"sb_code"
)
REFERENCES "tbl_subject" (
	"sb_code"
);

