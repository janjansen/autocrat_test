CREATE TABLE tbl_user (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    role VARCHAR(128) NOT NULL
);

CREATE TABLE book (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT ,
    isbn VARCHAR(128) NOT NULL,
    main_img_url VARCHAR(1023),
    printed_at INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE author (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    patronymic VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE book_author (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(book_id) REFERENCES book(id),
    FOREIGN KEY(author_id) REFERENCES author(id)
)


INSERT INTO tbl_user (login, password, role) VALUES ('user', '202cb962ac59075b964b07152d234b70', 'user');
INSERT INTO tbl_user (login, password, role) VALUES ('manager', '202cb962ac59075b964b07152d234b70', 'manager');


INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title1', 'desc1', 12435345, 'http://via.placeholder.com/150x150', 1988);
INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title2', 'desc2', 12345346, 'http://via.placeholder.com/150x150', 1986);
INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title3', 'desc3', 12334547, 'http://via.placeholder.com/150x150', 1984);
INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title4', 'desc4', 12345334547, 'http://via.placeholder.com/150x150', 1984);
INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title5', 'desc5', 12345347, 'http://via.placeholder.com/150x150', 1988);
INSERT INTO book (title, description, isbn, main_img_url, printed_at) VALUES ('title6', 'desc6', 123435447, 'http://via.placeholder.com/150x150', 1981);

INSERT INTO author (f_name, l_name, patronymic) VALUES ('Вася', 'Пупкин', 'Петрович');
INSERT INTO author (f_name, l_name, patronymic) VALUES ('Вася1', 'Пупкин1', 'Петрович1');
INSERT INTO author (f_name, l_name, patronymic) VALUES ('Вася2', 'Пупкин2', 'Петрович2');

INSERT INTO book_author (author_id, book_id) VALUES (1, 1);
INSERT INTO book_author (author_id, book_id) VALUES (1, 4);
INSERT INTO book_author (author_id, book_id) VALUES (2, 3);
INSERT INTO book_author (author_id, book_id) VALUES (1, 6);
INSERT INTO book_author (author_id, book_id) VALUES (3, 5);
INSERT INTO book_author (author_id, book_id) VALUES (3, 1);
INSERT INTO book_author (author_id, book_id) VALUES (3, 3);
INSERT INTO book_author (author_id, book_id) VALUES (3, 2);


