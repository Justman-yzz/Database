-- 테이블에 데이터 생성, 읽기, 갱신, 삭제하는 코드 직접 작성(ch14-20)

-- 1. employees 테이블을 생성해주세요
CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10,2)  -- DECIMAL(M,D) ->> 소수점까지 정확하게 맞춰 저장하는 숫자타입, M = 전체 자리수(소수점 앞+뒤), D = 소수점 아래 자리수
);

-- 2. 직원 데이터를 employees에 추가해주세요[지수의 연봉 7800 -> 78000 으로 변경. 오타의심됨.]
INSERT INTO employees (name, position, salary) VALUES ('혜린', 'PM', 90000);
INSERT INTO employees (name, position, salary) VALUES ('은우', 'Frontend', 80000);
INSERT INTO employees (name, position, salary) VALUES ('가을', 'Backend', 92000);
INSERT INTO employees (name, position, salary) VALUES ('지수', 'Frontend', 78000); -- 7800 대신 78000으로 수정(오타의심됨.)
INSERT INTO employees (name, position, salary) VALUES ('민혁', 'Frontend', 96000);
INSERT INTO employees (name, position, salary) VALUES ('하온', 'Backend', 130000);

-- 3. 모든 직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성해주세요
SELECT name, salary FROM employees;

 -- 1) Frontend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회하세요
 SELECT name, salary FROM employees WHERE position = 'Frontend' AND salary <= 90000;
 
 -- 2) PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요
 UPDATE employees SET salary = salary * 1.10 WHERE position = 'PM';
 
 
 -- 3) 모든 Backend 직책을 가진 직원의 연봉을 5% 인상하세요
 UPDATE employees SET salary = salary * 1.05 WHERE position = 'Backend';
 
 -- 4) 민혁 사원의 데이터를 삭제하세요
 DELETE FROM employees WHERE name = '민혁';

 -- 5) 모든 직원을 position 별로 그룹화하여 각 직책의 평균 연봉을 계산하세요
 SELECT position, AVG(salary) AS avg_salary FROM employees GROUP BY position;  -- SELECT a, AVG(x) = a라는 열의 동일한 것끼리 x의 평균을 구해 보여주기 // GROUP BY = 묶기

 -- 6) employees 테이블을 삭제하세요
 DROP TABLE employees;

 