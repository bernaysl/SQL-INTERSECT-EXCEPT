/*INTERSECT*/
/*bu komut ile tekrar eden verileri gorebiliriz.*/

(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 10
)
INTERSECT --bu komut ile tekrar eden verileri gorebiliriz.
(
SELECT * FROM book
ORDER BY title 
LIMIT 10
);


/*EXCEPT*/
/*ilk sorguda bulunan ama ikinci sorguda bulunmayan verileri aliriz*/
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT 
(
SELECT * FROM book
ORDER BY title 
LIMIT 5
);
