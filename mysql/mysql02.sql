CREATE TABLE DEPT(
  DEPNO INT,
  DNAME VARCHAR(20),
  ADDRESS VARCHAR(20)
);

INSERT INTO DEPT VALUES(20, '경영', '서울');
INSERT INTO DEPT VALUES(21, '영업', '경기');
INSERT INTO DEPT VALUES(22, '제조', '부산');

-- SQUI JOIN 
SELECT E.EMPNO, E.ENAME, D.DNAME FROM DEPT D, EMP E WHERE D.DEPNO = E.DEPNO;

-- SELF JOIN
SELECT E.ENAME, B.JOB FROM EMP E, EMP B WHERE E.DEPNO = 20;



-- EQUIT JOIN과 OUTER JOIN 비교
SELECT DISTINCT(E.DEPNO), D.DEPNO, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPNO = D.DEPNO ;

-- OUTER JOIN은 조건에 만족하지 않아도 나온다.
SELECT DISTINCT(E.DEPNO), D.DEPNO
FROM DEPT D
LEFT JOIN EMP E
ON E.DEPNO = D.DEPNO ;

-- CROSS JOIN
SELECT EMPNO, ENAME, DNAME FROM EMP CROSS JOIN DEPT ORDER BY ENAME DESC;

-- CROSS JOIN : CARTESIAN PRODUCT 값을 얻을 수 있다.
SELECT E.EMPNO, E.ENAME, D.DNAME FROM DEPT D CROSS JOIN EMP E;

