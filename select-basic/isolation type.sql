--isolation type

SELECT * FROM book;

commit;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

UPDATE book
   SET title = '토지5'
 WHERE no = 2;
 
 commit;