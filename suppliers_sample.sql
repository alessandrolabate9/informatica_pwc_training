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

