CREATE TABLE tbl_books(
   bk_isbn	CHAR(13) PRIMARY KEY,
    bk_title nVARCHAR2(125)	NOT NULL,	
    bk_ccode CHAR(5) NOT NULL,	
    bk_acode CHAR(5) NOT NULL,	
    bk_date	VARCHAR2(10),		
    bk_price NUMBER,		
    bk_pages NUMBER		
);

CREATE TABLE tbl_company(
    cp_code	CHAR(5)	PRIMARY KEY,
    cp_title nVARCHAR2(125)	NOT NULL,
    cp_ceo	nVARCHAR2(20),
    cp_tel	CHAR(20),	
    cp_addr	nVARCHAR2(125),
    cp_genre nVARCHAR2(30)		
);

CREATE TABLE tbl_author(
    au_code	CHAR(5)	PRIMARY KEY,
    au_name	nVARCHAR2(50) NOT NULL,	
    au_tel	VARCHAR2(20),
    au_addr	nVARCHAR2(125),		
    au_genre	nVARCHAR2(30)		
);

-- 3개의 table을 JOIN

SELECT B.bk_isbn AS ISBN, 
        B.bk_title AS 도서명, C.cp_title 출판사명,
        C.cp_ceo AS 출판사대표, A.au_name AS 저자명,
        A.au_tel AS 저자연락처, B.bk_date AS 출판일,
        B.bk_price AS 가격
FROM tbl_books B
    LEFT JOIN tbl_company C
        ON B.bk_ccode = C.cp_code
    LEFT JOIN tbl_author A
        ON A.au_code = B.bk_acode;