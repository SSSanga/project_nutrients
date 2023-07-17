CREATE TABLE COMPONENT
(
  COMPONENT    VARCHAR(500) NOT NULL COMMENT '성분',
  COMPONENT_ID VARCHAR(500) NOT NULL COMMENT '성분_ID',
  PRIMARY KEY (COMPONENT_ID)
) COMMENT '성분';

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
  DATE          TIMESTAMP    NOT NULL COMMENT '작성일자',
  CONTENT       VARCHAR(500) NOT NULL COMMENT '내용',
  RESPONSE      VARCHAR(500) NOT NULL COMMENT '응답',
  RESPONSE_DATE TIMESTAMP    NOT NULL COMMENT '응답일자',
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
  REVIEW_ID    VARCHAR(500) NOT NULL COMMENT '리뷰_ID',
  DATE         TIMESTAMP    NULL     COMMENT '작성일자',
  CONTENT      VARCHAR(500) NULL     COMMENT '내용',
  VIEW_COUNT   VARCHAR(500) NULL     COMMENT '조회수',
  UNIQUE_ID    VARCHAR(50)  NOT NULL COMMENT '유니크ID',
  NUTRIENTS_ID VARCHAR(50)  NOT NULL COMMENT '영양제_ID',
  PRIMARY KEY (REVIEW_ID)
) COMMENT '리뷰';

CREATE TABLE SEX
(
  SEX    VARCHAR(50) NOT NULL COMMENT '성별',
  SEX_ID VARCHAR(50) NOT NULL COMMENT '성별_ID',
  PRIMARY KEY (SEX_ID)
) COMMENT '성별';


CREATE TABLE SIDEEFFECTS
(
  SIDEEFFECT    VARCHAR(500) NOT NULL COMMENT '부작용',
  SIDEEFFECT_ID VARCHAR(500) NOT NULL COMMENT '부작용_ID',
  PRIMARY KEY (SIDEEFFECT_ID)
) COMMENT '부작용';

CREATE TABLE SUPP_SPEC
(
  NUTRIENTS_ID  VARCHAR(50)  NOT NULL COMMENT '영양제_ID',
  PRODUCT       VARCHAR(50)  NULL     COMMENT '이름',
  MANUFACTURE   VARCHAR(50)  NULL     COMMENT '제조사',
  DOSAGE        VARCHAR(50)  NULL     COMMENT '용량',
  FREQUENCY     VARCHAR(50)  NULL     COMMENT '복용 주기',
  COMPONENT_ID  VARCHAR(500) NOT NULL COMMENT '성분_ID',
  SIDEEFFECT_ID VARCHAR(500) NOT NULL COMMENT '부작용_ID',
  PRIMARY KEY (NUTRIENTS_ID)
) COMMENT '영양제 정보';

CREATE TABLE 영양제별 효과
(
  NUTRIENTS_ID VARCHAR(50) NOT NULL COMMENT '영양제_ID',
  EFFECT_ID    VARCHAR(50) NOT NULL COMMENT '효과_ID',
  EFFECT_FIRST VARCHAR(50) NOT NULL COMMENT 'PARENTS_ID',
  PRIMARY KEY (EFFECT_FIRST)
);

ALTER TABLE Inquiry
  ADD CONSTRAINT FK_MEMBERSANDADMIN_TO_Inquiry
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES MEMBERSANDADMIN (UNIQUE_ID);

ALTER TABLE MEMBERSANDADMIN
  ADD CONSTRAINT FK_SEX_TO_MEMBERSANDADMIN
    FOREIGN KEY (SEX_ID)
    REFERENCES SEX (SEX_ID);

ALTER TABLE MEMBERSANDADMIN
  ADD CONSTRAINT FK_HISTORY_TO_MEMBERSANDADMIN
    FOREIGN KEY (HISTORY_ID)
    REFERENCES HISTORY (HISTORY_ID);

ALTER TABLE Review
  ADD CONSTRAINT FK_MEMBERSANDADMIN_TO_Review
    FOREIGN KEY (UNIQUE_ID)
    REFERENCES MEMBERSANDADMIN (UNIQUE_ID);

ALTER TABLE Review
  ADD CONSTRAINT FK_SUPP_SPEC_TO_Review
    FOREIGN KEY (NUTRIENTS_ID)
    REFERENCES SUPP_SPEC (NUTRIENTS_ID);

ALTER TABLE 영양제별 효과
  ADD CONSTRAINT FK_SUPP_SPEC_TO_영양제별 효과
    FOREIGN KEY (NUTRIENTS_ID)
    REFERENCES SUPP_SPEC (NUTRIENTS_ID);

ALTER TABLE SUPP_SPEC
  ADD CONSTRAINT FK_COMPONENT_TO_SUPP_SPEC
    FOREIGN KEY (COMPONENT_ID)
    REFERENCES COMPONENT (COMPONENT_ID);

ALTER TABLE SUPP_SPEC
  ADD CONSTRAINT FK_SIDEEFFECTS_TO_SUPP_SPEC
    FOREIGN KEY (SIDEEFFECT_ID)
    REFERENCES SIDEEFFECTS (SIDEEFFECT_ID);

ALTER TABLE 영양제별 효과
  ADD CONSTRAINT FK_EFFECT_TO_영양제별 효과
    FOREIGN KEY (EFFECT_ID)
    REFERENCES EFFECT (EFFECT_ID);