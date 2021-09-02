CREATE TABLE QNA (
	qa_postnb	number(20)	NOT NULL,--QNA번호
	qa_id	varchar2(20)	NOT NULL,--idFK
	qa_pw	varchar2(20)	NOT NULL,--비밀번호
	qa_upload	date	NOT NULL,--업로드 날짜
	qa_mddate	date	NULL,--수정날짜
	qa_deldate	date	NULL,--ㅅ삭제날짜
	qa_delflag	number(5)	DEFAULT 0	NOT NULL,--삭제플래그
	qa_viewcnt	number(20)	DEFAULT 0	NOT NULL,--조회수
	qa_title	varchar2(50)		NOT NULL,--제목
	qa_content	varchar2(2000)		NULL--내용
);
--위에 varchar타입 varchar2로 다 수정했음

create sequence qa_postnb_seq
start with 1
increment by 1
nocache;

ALTER TABLE QNA ADD CONSTRAINT PK_QNA PRIMARY KEY (
	qa_postnb,
	qa_id
);

drop table QNA;

ALTER TABLE QNA ADD CONSTRAINT FK_USER_INFO_TO_QNA_1 FOREIGN KEY (
	qa_id
)
REFERENCES USER_INFO (
	info_id
);

select * from QNA



insert into QNA values (qa_postnb_seq.nextval,'QNAID','1234',sysdate,sysdate,sysdate,0,0,'제목','내용');

insert into QNA(qa_postnb,qa_id,qa_pw,qa_upload,qa_title,qa_content)
      values(qa_postnb_seq.nextval,'1234','1234',sysdate,'질문입니다','내용입니다');


CREATE TABLE QNA_test (
	qa_postnb	number(20)	primary key,--QNA번호
	qa_id	varchar(20),--idFK
	qa_pw	varchar(20),--비밀번호
	qa_upload	date,--업로드 날짜
	qa_mddate	date,--수정날짜
	qa_deldate	date,--ㅅ삭제날짜
	qa_delflag	number(5)	DEFAULT 0	NOT NULL,--삭제플래그
	qa_viewcnt	number(20)	DEFAULT 0	NOT NULL,--조회수
	qa_title	varchar(50),--제목
	qa_content	varchar(2000)--내용
);

create sequence qa_postnb_testseq
start with 1
increment by 1
nocache;



CREATE TABLE POSTING (
	pt_postnb	number(20)		NOT NULL,
	pt_id	varchar2(20)		NOT NULL,
	pt_pw	varchar2(20)		NOT NULL,
	pt_update	date		NOT NULL,
	pt_mddate	date		NULL,
	pt_deldate	date		NULL,
	pt_delflag	number(5)	DEFAULT 0	NOT NULL,
	pt_viewcnt	number(20)	DEFAULT 0	NOT NULL,
	pt_reportcnt	number(5)	DEFAULT 0	NOT NULL,
	pt_title	varchar2(50)		NOT NULL,
	pt_content	varchar2(2000)		NOT NULL,
	pt_category	varchar2(50)		NOT NULL
);

ALTER TABLE POSTING ADD CONSTRAINT PK_POSTING PRIMARY KEY (
	pt_postnb,
	pt_id
);

ALTER TABLE POSTING ADD CONSTRAINT FK_USER_INFO_TO_POSTING_1 FOREIGN KEY (
	pt_id
)
REFERENCES USER_INFO (
	info_id
);

create sequence pt_postnb_seq
start with 1
increment by 1
nocache;



