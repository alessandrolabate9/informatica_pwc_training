-- Create the SUPPLIERS table
CREATE TABLE Training.SUPPLIERS (
  supplier_id INTEGER,
  supplier_name VARCHAR(255),
  contact_name VARCHAR(255)
);

-- Insert sample data into the SUPPLIERS table
INSERT INTO Training.SUPPLIERS (supplier_id, supplier_name, contact_name) 
SELECT rownum * 10 as supplier_id , 'Supplier ' || rownum as supplier_name, FIRST_NAME || ' ' || LAST_NAME AS CONTACT_NAME
FROM TRAINING.EMPLOYEES;
commit; 



-- task 4 
WITH RANKED_SALARY AS(

SELECT D.DEPARTMENT_NAME AS DEPARTMENT

            ,RANK() OVER(

                    PARTITION BY D.DEPARTMENT_ID

                    ORDER BY E.SALARY DESC) AS SALARY_RANK

    

FROM TRAINING.EMPLOYEES E

JOIN TRAINING.DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)

)

SELECT * FROM RANKED_SALARY

WHERE SALARY_RANK < 3;