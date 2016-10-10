-- transaction type

COMMIT;

SET TRANSACTION READ ONLY;

SELECT * FROM book;

DELETE FROM book;

COMMIT;

SET TRANSACTION READ WRITE;

SELECT * FROM book;

INSERT INTO book
     VALUES (3,
             '토지3',
             SYSDATE,
             '대여가능',
             1);