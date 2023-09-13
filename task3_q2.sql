SELECT D.LOCATION_ID, COUNT(E.EMPLOYEE_ID) 
	FROM HR."DEPARTMENTS" D
JOIN  HR."EMPLOYEES" E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY D.LOCATION_ID;