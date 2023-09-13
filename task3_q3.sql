WITH EmptyDepartments AS (
    SELECT D.DEPARTMENT_NAME 
    FROM HR."DEPARTMENTS" D
    LEFT JOIN HR."EMPLOYEES" E ON D."DEPARTMENT_ID" = E."DEPARTMENT_ID"
    WHERE E."DEPARTMENT_ID" IS NULL
)

SELECT SUBSTR(DEPARTMENT_NAME, 5, 1) AS "FIFTH_LETTER", DEPARTMENT_NAME
 FROM EmptyDepartments;