
CREATE TABLE CHOLESTEROL_LIST
(
  KEYWORD_ID  VARCHAR(50)  NOT NULL COMMENT '콜레스테롤 _ID',
  KEYWORD     VARCHAR(50)  NOT NULL COMMENT '콜레스테롤',
  PRODUCT     VARCHAR(50)  NOT NULL COMMENT '이름',
  MANUFACTURE VARCHAR(50)  NOT NULL COMMENT '제조사',
  EFFECT      VARCHAR(500) NOT NULL COMMENT '필요기대효과',
  COMPONENT1  VARCHAR(50)  NOT NULL COMMENT '성분1',
  COMPONENT2  VARCHAR(50)  NOT NULL COMMENT '성분2',
  TYPE        VARCHAR(50)  NOT NULL COMMENT '영양제 제형',
  DOSAGE      VARCHAR(50)  NOT NULL COMMENT '용량',
  FREQUENCY   VARCHAR(50)  NOT NULL COMMENT '복용 주기',
  SIDEEFFECTS VARCHAR(50)  NOT NULL COMMENT '부작용',
  SUPP_ID     VARCHAR(50)  NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (KEYWORD_ID)
) COMMENT '콜레스테롤 개선';

CREATE TABLE EYES_LIST
(
  KEYWORD_ID  VARCHAR(50)  NOT NULL COMMENT '눈_ID',
  KEYWORD     VARCHAR(50)  NOT NULL COMMENT '눈',
  PRODUCT     VARCHAR(50)  NOT NULL COMMENT '이름',
  MANUFACTURE VARCHAR(50)  NOT NULL COMMENT '제조사',
  EFFECT      VARCHAR(500) NOT NULL COMMENT '필요기대효과',
  COMPONENT1  VARCHAR(50)  NOT NULL COMMENT '성분1',
  COMPONENT2  VARCHAR(50)  NOT NULL COMMENT '성분2',
  TYPE        VARCHAR(50)  NOT NULL COMMENT '영양제 제형',
  DOSAGE      VARCHAR(50)  NOT NULL COMMENT '용량',
  FREQUENCY   VARCHAR(50)  NOT NULL COMMENT '복용 주기',
  SIDEEFFECTS VARCHAR(50)  NOT NULL COMMENT '부작용',
  SUPP_ID     VARCHAR(50)  NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (KEYWORD_ID)
) COMMENT '눈 기능 개선';

CREATE TABLE LIVER_LIST
(
  KEYWORD_ID  VARCHAR(50)  NOT NULL COMMENT '간_ID',
  KEYWORD     VARCHAR(50)  NOT NULL COMMENT '간',
  PRODUCT     VARCHAR(50)  NOT NULL COMMENT '이름',
  MANUFACTURE VARCHAR(50)  NOT NULL COMMENT '제조사',
  EFFECT      VARCHAR(500) NOT NULL COMMENT '필요기대효과',
  COMPONENT1  VARCHAR(50)  NOT NULL COMMENT '성분1',
  COMPONENT2  VARCHAR(50)  NOT NULL COMMENT '성분2',
  TYPE        VARCHAR(50)  NOT NULL COMMENT '영양제 제형',
  DOSAGE      VARCHAR(50)  NOT NULL COMMENT '용량',
  FREQUENCY   VARCHAR(50)  NOT NULL COMMENT '복용 주기',
  SIDEEFFECTS VARCHAR(50)  NOT NULL COMMENT '부작용',
  SUPP_ID     VARCHAR(50)  NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (KEYWORD_ID)
) COMMENT '간 기능개선';

CREATE TABLE RECOVERY_LIST
(
  KEYWORD_ID  VARCHAR(50)  NOT NULL COMMENT '피로개선_ID',
  KEYWORD     VARCHAR(50)  NULL     COMMENT '피로개선',
  PRODUCT     VARCHAR(50)  NULL     COMMENT '이름',
  MANUFACTURE VARCHAR(50)  NULL     COMMENT '제조사',
  EFFECT      VARCHAR(500) NULL     COMMENT '필요기대효과',
  COMPONENT1  VARCHAR(50)  NULL     COMMENT '성분1',
  COMPONENT2  VARCHAR(50)  NULL     COMMENT '성분2',
  TYPE        VARCHAR(50)  NULL     COMMENT '영양제 제형',
  DOSAGE      VARCHAR(50)  NULL     COMMENT '용량',
  FREQUENCY   VARCHAR(50)  NULL     COMMENT '복용 주기',
  SIDEEFFECTS VARCHAR(50)  NULL     COMMENT '부작용',
  SUPP_ID     VARCHAR(50)  NOT NULL COMMENT '영양제리스트',
  PRIMARY KEY (KEYWORD_ID)
) COMMENT '피로회복';

CREATE TABLE SUPP_LIST
(
  SUPP_ID    VARCHAR(50) NOT NULL COMMENT '영양제리스트',
  KEYWORD_ID VARCHAR(50) NOT NULL COMMENT '기능별_ID',
  KEYWORD    VARCHAR(50) NOT NULL COMMENT '기능별 ',
  PRIMARY KEY (SUPP_ID)
) COMMENT '영양제 리스트';

ALTER TABLE CHOLESTEROL_LIST
  ADD CONSTRAINT FK_SUPP_LIST_TO_CHOLESTEROL_LIST
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE RECOVERY_LIST
  ADD CONSTRAINT FK_SUPP_LIST_TO_RECOVERY_LIST
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE EYES_LIST
  ADD CONSTRAINT FK_SUPP_LIST_TO_EYES_LIST
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);

ALTER TABLE LIVER_LIST
  ADD CONSTRAINT FK_SUPP_LIST_TO_LIVER_LIST
    FOREIGN KEY (SUPP_ID)
    REFERENCES SUPP_LIST (SUPP_ID);
