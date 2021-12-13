# Create a table named book_deatails

create table book_details (
    book_name varchar2(100), 
    author_name varchar2(100), 
    book_description varchar2(255), 
    price float, 
    in_stock int, 
    primary_keyword varchar2(10), 
    secondary_keyword varchar2(10), 
    rating float
    );

# Insert Data to table book_details

insert into book_details values ("Let us C", "Yashwant K.", "Learn C programming", 200.25, 3, "C", "software", 4.5);
insert into book_details values ("Let us C++", "Yashwant K.", "Learn C++ programming", 230.25, 5, "C++", "C", 4.5);
insert into book_details values ("Head first Java", "Kathy Sierra", "Learn Java programming", 330, 10, "Java", "JVM", 3.5);
insert into book_details values ("Java: The complete reference", "Mc Graw Hill", "7th edition, learn Java programming", 783, 4, "Java", "Javabeans", 4);
insert into book_details values ("Thinking in Java", "Bruce Eckel", "Java programming basics", 3000, 5, "Java", "JVM", 4.5);


# Select only Java books

select * from book_details where primary_keyword like '%java%';

# Select Java books that have a rating greater than 4

select * from book_details where primary_keyword like '%java%' and rating > 4;

# Select books based on author name

select * from book_details where author_name like '%Yashwant%';

# After user pick a book for purchase, database need to update the latest count. To do this, first to get the current stock and reduce it

select in_stock, book_name, price from book_details where book_name = 'Let us C';
update book_details set in_stock = in_stock-1 where book_name = 'Let us C';
select * from book_details where book_name = 'Let us C';

# To delete books that having a rating less than 4

delete from book_details where rating < 4;
