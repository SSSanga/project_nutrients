
CREATE TABLE 
(
  SUPP_ID      VARCHAR(50) NOT NULL COMMENT '영양제리스트',
  NUTRIENTS_ID VARCHAR(50) NOT NULL COMMENT '영양제 _ID'
);

CREATE TABLE HISTORY
(
  HISTORYDISEASE VARCHAR(50) NOT NULL COMMENT '질병이력',
  ALLERGIES      VARCHAR(50) NOT NULL COMMENT '알레르기_ID',
  HISTORY_ID     VARCHAR(50) NOT NULL COMMENT '과거력_ID',
  PRIMARY KEY (HISTORY_ID)
) COMMENT '과거력';

CREATE TABLE Inquiry
(
  INQUIRY_ID    VARCHAR(500) NOT NULL COMMENT '댓글_ID',
  DATE          VARCHAR(500) NOT NULL COMMENT '작성일자',
  CONTENT       VARCHAR(500) NOT NULL COMMENT '내용',
  RESPONSE      VARCHAR(500) NOT NULL COMMENT '응답',
  RESPONSE_DATE VARCHAR(500) NOT NULL COMMENT '응답_일자',
  ADMINE_ID     VARCHAR(500) NOT NULL COMMENT '관리자_ID',
  UNIQUE_ID     VARCHAR(50)  NOT NULL COMMENT '유니크ID',
  PRIMARY KEY (INQUIRY_ID)
) COMMENT '문의';

CREATE TABLE MEMBERSANDADMIN
(
  UNIQUE_ID        VARCHAR(50)  NOT NULL COMMENT '유니크ID',
  NAME             VARCHAR(50)  NOT NULL COMMENT '이름',
  ID               VARCHAR(50)  NOT NULL COMMENT '아이디',
  PASSWORD         VARCHAR(50)  NOT NULL COMMENT '비밀번호',
  BIRTHDATE        VARCHAR(50)  NOT NULL COMMENT '생년월일',
  AGE              VARCHAR(50)  NOT NULL COMMENT '나이',
  SEX_ID           VARCHAR(50)  NOT NULL COMMENT '성별_ID',
  ADDRESS          VARCHAR(50)  NOT NULL COMMENT '주소',
  PHONE            VARCHAR(50)  NOT NULL COMMENT '연락처',
  REGISTRATIONDATE VARCHAR(50)  NOT NULL COMMENT '가입일',
  EMAIL            VARCHAR(50)  NOT NULL COMMENT '이메일',
  ADMINE_ID        VARCHAR(500) NOT NULL COMMENT '관리자_ID',
  HISTORY_ID       VARCHAR(50)  NOT NULL COMMENT '과거력_ID',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '정보';

CREATE TABLE Review
(
  REVIEW_ID  VARCHAR(500) NOT NULL COMMENT '리뷰_ID',
  DATE       VARCHAR(500) NULL     COMMENT '작성일자',
  CONTENT    VARCHAR(500) NULL     COMMENT '내용',
  VIEW_COUNT VARCHAR(500) NULL     COMMENT '조회수',
  UNIQUE_ID  VARCHAR(50)  NOT NULL COMMENT '유니크ID',
  SUPP_ID    VARCHAR(50)  NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (REVIEW_ID)
) COMMENT '리뷰';

CREATE TABLE SEX
(
  SEX    VARCHAR(50) NOT NULL COMMENT '성별',
  SEX_ID VARCHAR(50) NOT NULL COMMENT '성별_ID',
  PRIMARY KEY (SEX_ID)
) COMMENT '성별';

CREATE TABLE SUPP_LIST
(
  SUPP_ID  VARCHAR(50)  NULL     COMMENT '영양제리스트',
  Admin_ID VARCHAR(500) NOT NULL COMMENT '관리자_ID',
  PRIMARY KEY (SUPP_ID)
) COMMENT '영양제 리스트';

CREATE TABLE SUPP_SPEC
(
  KEYWORD_ID  VARCHAR(50) NOT NULL COMMENT '피로개선_ID',
  PRODUCT     VARCHAR(50) NULL     COMMENT '이름',
  MANUFACTURE VARCHAR(50) NULL     COMMENT '제조사',
  COMPONENT1  VARCHAR(50) NULL     COMMENT '성분1',
  COMPONENT2  VARCHAR(50) NULL     COMMENT '성분2',
  TYPE        VARCHAR(50) NULL     COMMENT '영양제 제형',
  DOSAGE      VARCHAR(50) NULL     COMMENT '용량',
  EFFECT_ID               NOT NULL COMMENT '필요효과기대_ID',
  FREQUENCY   VARCHAR(50) NULL     COMMENT '복용 주기',
  SIDEEFFECTS VARCHAR(50) NULL     COMMENT '부작용',
  SUPP_ID     VARCHAR(50) NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (KEYWORD_ID)
) COMMENT '영양제 상세정보';

CREATE TABLE EFFECT
(
  EFFECT     NOT NULL,
  EFFECT_ID  NOT NULL,
  PRIMARY KEY (EFFECT_ID)
) COMMENT '필요효과기대';

ALTER TABLE MEMBERSANDADMIN
  ADD CONSTRAINT FK_SEX_TO_MEMBERSANDADMIN
    FOREIGN KEY (SEX_ID)
    REFERENCES SEX (SEX_ID);

ALTER TABLE MEMBERSANDADMIN
  ADD CONSTRAINT FK_HISTORY_TO_MEMBERSANDADMIN
    FOREIGN KEY (HISTORY_ID)
    REFERENCES HISTORY (HISTORY_ID);

ALTER TABLE SUPP_SPEC
  ADD CONSTRAINT FK_SUPP_LIST_TO_SUPP_SPEC
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE Review
  ADD CONSTRAINT FK_MEMBERSANDADMIN_TO_Review
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES MEMBERSANDADMIN (UNIQUE_ID);

ALTER TABLE Inquiry
  ADD CONSTRAINT FK_MEMBERSANDADMIN_TO_Inquiry
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES MEMBERSANDADMIN (UNIQUE_ID);

ALTER TABLE Review
  ADD CONSTRAINT FK_SUPP_LIST_TO_Review
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE 
  ADD CONSTRAINT FK_SUPP_LIST_TO_
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE 
  ADD CONSTRAINT FK_SUPP_SPEC_TO_
    FOREIGN KEY (NUTRIENTS_ID)
    REFERENCES SUPP_SPEC (NUTRIENTS_ID);