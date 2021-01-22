alter session set current_schema = mt_toy;
SET heading OFF

SELECT CUSTOMER_NAME, CITY, RENTAL_ID, to_char(to_date(R.Rental_Start_Date,'DD-MM-YY'), 'DD-MM-YY') RENTAL_START_DATE,  to_char(to_date(R.Rental_End_Date,'DD/MM/YYYY'), 'DD-MM-YY') RENTAL_END_DATE 
FROM CUSTOMER C, TOY_RENTAL R
WHERE C.CUSTOMER_ID = R.CUSTOMER_ID(+) order by C.Customer_ID ASC;
