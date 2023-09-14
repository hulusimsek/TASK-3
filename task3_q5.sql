
-- fonksiyon tanımı
CREATE OR REPLACE FUNCTION reverse_string(input_string IN VARCHAR2) RETURN VARCHAR2 IS
reversed_string VARCHAR2(4000) := '';
BEGIN 
	FOR i IN 1..LENGTH(input_string) LOOP
        reversed_string := reversed_string || SUBSTR(input_string, -i, 1);
    END LOOP;
    RETURN reversed_string;

END;




WITH EmptyDepartments AS (
    SELECT D.DEPARTMENT_NAME 
    FROM HR."DEPARTMENTS" D
    LEFT JOIN HR."EMPLOYEES" E ON D."DEPARTMENT_ID" = E."DEPARTMENT_ID"
    WHERE E."DEPARTMENT_ID" IS NULL
)

SELECT DEPARTMENT_NAME AS dept_name,
	reverse_string(DEPARTMENT_NAME)
 FROM EmptyDepartments;
