/*
 * JsTree 추적 로그 테이블
 * 트리거 Log를 저장합니다.
 */
CREATE TABLE T_JSTREE_AGGREGATE_RESULT_LOG
(
 C_ID        NUMBER                            NOT NULL,
 C_PARENTID  NUMBER                            NOT NULL,
 C_POSITION  NUMBER                            NOT NULL,
 C_LEFT      NUMBER                            NOT NULL,
 C_RIGHT     NUMBER                            NOT NULL,
 C_LEVEL     NUMBER                            NOT NULL,
 C_TITLE     VARCHAR2(4000 BYTE),
 C_TYPE      VARCHAR2(4000 BYTE),
 C_METHOD    VARCHAR2(4000 BYTE),
 C_STATE     VARCHAR2(4000 BYTE),
 C_DATE      DATE                              NOT NULL
);

COMMENT ON TABLE T_JSTREE_AGGREGATE_RESULT_LOG IS '기본 트리 스키마 트리거 로그';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_ID IS '노드 아이디';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_PARENTID IS '부모 노드 아이디';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_POSITION IS '노드 포지션';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_LEFT IS '노드 좌측 끝 포인트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_RIGHT IS '노드 우측 끝 포인트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_LEVEL IS '노드 DEPTH ';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_TITLE IS '노드 명';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_TYPE IS '노드 타입';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_METHOD IS '노드 변경 행위';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_STATE IS '노드 상태값 ( 이전인지. 이후인지)';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT_LOG.C_DATE IS '노드 변경 시';

/*
 * JsTree
 */
CREATE TABLE T_JSTREE_AGGREGATE_RESULT
(
 C_ID        		NUMBER                            NOT NULL,
 C_PARENTID  	    NUMBER                            NOT NULL,
 C_POSITION  	    NUMBER                            NOT NULL,
 C_LEFT      		NUMBER                            NOT NULL,
 C_RIGHT     		NUMBER                            NOT NULL,
 C_LEVEL     		NUMBER                            NOT NULL,
 C_TITLE     		VARCHAR2(4000 BYTE),
 C_TYPE      		VARCHAR2(4000 BYTE),

    TOP_NUMBER_OF_ADVANTAGES    NUMBER,
    TOP_LIKE_COUNT              NUMBER,
    TOP_TOTAL_REGISTERED_POSTS  NUMBER,
    TOP_REGISTERED_HASH_TAG     NUMBER,

    MID_NUMBER_OF_ADVANTAGES    NUMBER,
    MID_LIKE_COUNT              NUMBER,
    MID_TOTAL_REGISTERED_POSTS  NUMBER,
    MID_REGISTERED_HASH_TAG     NUMBER,

    BOT_NUMBER_OF_ADVANTAGES    NUMBER,
    BOT_LIKE_COUNT              NUMBER,
    BOT_TOTAL_REGISTERED_POSTS  NUMBER,
    BOT_REGISTERED_HASH_TAG     NUMBER,

    TOP_GRAPH_PERCENT           NUMBER,
    MID_GRAPH_PERCENT           NUMBER,
    BOT_GRAPH_PERCENT           NUMBER,

    TOP_VERSUS_SCORE            NUMBER,
    MID_VERSUS_SCORE            NUMBER,
    BOT_VERSUS_SCORE            NUMBER,

    TOTAL_TRAFFIC               NUMBER,
    UNIQUE_VISIT                NUMBER,
    REVISIT_COUNT               NUMBER,
    PAGE_VIEW                   NUMBER,

    TOTAL_ARTICLE               NUMBER,
    TOTAL_LIKE_COUNT            NUMBER,
    TOTAL_SPEC_COUNT            NUMBER,
    TOTAL_HASH_COUNT            NUMBER,

    STANDARD_ERROR              NUMBER,
    EQUILIBRIUM_ASSUMPTION      NUMBER,
    PROBABILITY                 NUMBER,
    LOWER_LIMIT                 NUMBER,
    HIGHER_LIMIT                NUMBER,
    DISTRIBUTION_T_RESULT       NUMBER,
 CONSTRAINT  T_JSTREE_AGGREGATE_RESULT_PK PRIMARY KEY (C_ID)
 /*
   * CONSTRAINT  T_JSTREE_AGGREGATE_RESULT_FK1 FOREIGN KEY (OTHER_ID) REFERENCES OTHER T_JSTREE_AGGREGATE_RESULT(C_ID) ON DELETE CASCADE
   */
);

COMMENT ON TABLE T_JSTREE_AGGREGATE_RESULT IS '기본 트리 스키마';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_ID IS '노드 아이디';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_PARENTID IS '부모 노드 아이디';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_POSITION IS '노드 포지션';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_LEFT IS '노드 좌측 끝 포인트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_RIGHT IS '노드 우측 끝 포인트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_LEVEL IS '노드 DEPTH ';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_TITLE IS '노드 명';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.C_TYPE IS '노드 타입';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_NUMBER_OF_ADVANTAGES IS '우위 스펙 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_LIKE_COUNT IS '우위 좋아요 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_TOTAL_REGISTERED_POSTS IS '우위 등록 글 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_REGISTERED_HASH_TAG IS '우위 등록 해시태그 개수';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_NUMBER_OF_ADVANTAGES IS '중위 스펙 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_LIKE_COUNT IS '중위 좋아요 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_TOTAL_REGISTERED_POSTS IS '중위 등록 글 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_REGISTERED_HASH_TAG IS '중위 등록 해시태그 개수';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_NUMBER_OF_ADVANTAGES IS '하위 스펙 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_LIKE_COUNT IS '하위 좋아요 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_TOTAL_REGISTERED_POSTS IS '하위 등록 글 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_REGISTERED_HASH_TAG IS '하위 등록 해시태그 개수';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_GRAPH_PERCENT IS '상위 그래프 퍼센트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_GRAPH_PERCENT IS '중위 그래프 퍼센트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_GRAPH_PERCENT IS '하위 그래프 퍼센트';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOP_VERSUS_SCORE IS '상위 비교 스코어';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.MID_VERSUS_SCORE IS '중위 비교 스코어';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.BOT_VERSUS_SCORE IS '하위 비교 스코어';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOTAL_TRAFFIC IS '총 트래픽';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.UNIQUE_VISIT IS '유니크 방문 카운트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.REVISIT_COUNT IS '재 방문 카운트';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.PAGE_VIEW IS '페이지 뷰 카운트';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOTAL_ARTICLE IS '총 등록 글 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOTAL_LIKE_COUNT IS '총 좋아요 등록 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOTAL_SPEC_COUNT IS '총 스펙 등록 개수';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.TOTAL_HASH_COUNT IS '총 해시 태그 등록 개수';

COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.STANDARD_ERROR IS '표준 오차';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.EQUILIBRIUM_ASSUMPTION IS '등분상 가정 유의확률';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.PROBABILITY IS '유의 확률';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.LOWER_LIMIT IS '신뢰구간 하한';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.HIGHER_LIMIT IS '신뢰구간 상한';
COMMENT ON COLUMN T_JSTREE_AGGREGATE_RESULT.DISTRIBUTION_T_RESULT IS 'T분포결과';
/*
 * 인덱스는 되도록 걸지 말것.
 * CREATE UNIQUE INDEX I_COMPREHENSIVETREE ON T_JSTREE_AGGREGATE_RESULT
 *      ("C_ID" ASC)
 * DROP SEQUENCE S_JSTREE_AGGREGATE_RESULT;
 */


CREATE SEQUENCE S_JSTREE_AGGREGATE_RESULT
 START WITH 10
 MAXVALUE 999999999999999999999999999
 MINVALUE 0
 NOCYCLE
 CACHE 20
 NOORDER;

/*
 * JsTree 트리거
 */
CREATE OR REPLACE TRIGGER "TG_JSTREE_AGGREGATE_RESULT"
BEFORE DELETE OR INSERT OR UPDATE
ON T_JSTREE_AGGREGATE_RESULT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
/******************************************************************************
   NAME:       TRIGGER_COMPREHENSIVETREE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        2012-08-29             1. Created this trigger.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     TRIGGER_COMPREHENSIVETREE
      Sysdate:         2012-08-29
      Date and Time:   2012-08-29, 오후 5:26:44, and 2012-08-29 오후 5:26:44
      Username:         (set in TOAD Options, Proc Templates)
      Table Name:      T_JSTREE_AGGREGATE_RESULT (set in the "New PL/SQL Object" dialog)
      Trigger Options:  (set in the "New PL/SQL Object" dialog)
******************************************************************************/
BEGIN
  tmpVar := 0;
   IF UPDATING  THEN
       insert into T_JSTREE_AGGREGATE_RESULT_LOG
       values (:old.C_ID,:old.C_PARENTID,:old.C_POSITION,:old.C_LEFT,:old.C_RIGHT,:old.C_LEVEL,:old.C_TITLE,:old.C_TYPE,'update','변경이전데이터',sysdate);
       insert into T_JSTREE_AGGREGATE_RESULT_LOG
       values (:new.C_ID,:new.C_PARENTID,:new.C_POSITION,:new.C_LEFT,:new.C_RIGHT,:new.C_LEVEL,:new.C_TITLE,:new.C_TYPE,'update','변경이후데이터',sysdate);
    END IF;
   IF DELETING THEN
       insert into T_JSTREE_AGGREGATE_RESULT_LOG
       values (:old.C_ID,:old.C_PARENTID,:old.C_POSITION,:old.C_LEFT,:old.C_RIGHT,:old.C_LEVEL,:old.C_TITLE,:old.C_TYPE,'delete','삭제된데이터',sysdate);
   END IF;
   IF INSERTING  THEN
       insert into T_JSTREE_AGGREGATE_RESULT_LOG
       values (:new.C_ID,:new.C_PARENTID,:new.C_POSITION,:new.C_LEFT,:new.C_RIGHT,:new.C_LEVEL,:new.C_TITLE,:new.C_TYPE,'insert','삽입된데이터',sysdate);
   END IF;

  EXCEPTION
    WHEN OTHERS THEN
      -- Consider logging the error and then re-raise
      RAISE;
END TG_JSTREE_AGGREGATE_RESULT;

/**
PK - FK
**/
ALTER TABLE T_JSTREE_MENU ADD (
  CONSTRAINT T_JSTREE_MENU_FK_AR
 FOREIGN KEY (AGGREGATE_RESULT_ID)
 REFERENCES T_JSTREE_AGGREGATE_RESULT (C_ID));
/