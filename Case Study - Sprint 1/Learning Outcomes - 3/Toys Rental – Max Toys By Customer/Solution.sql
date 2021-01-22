alter session set current_schema = mt_toy;
SET heading OFF

select id CUSTOMER_ID from (select c.Customer_Id id, sum(t.Quantity) q from Customer c, Toy_Rental tr, Toy t where c.Customer_Id = tr.Customer_ID AND tr.Toy_ID = t.Toy_Id group by c.Customer_Id order by q desc) where rownum = 1;
