/* You are tasked to create a table with a name "students" with different columns including
    their student number, first name, last name, course, and section. You must add different data manipulation
    such as CRUD.
*/

    --creating table with required columns.
        create table students (student_num int, first_name varchar (15), last_name varchar(15), course varchar(15), section varchar(15));
    
    --describe the table 
        describe students;

    /*inserting values in the created table
     the information can vary depending on what information you need to insert*/
        insert into students values (001, 'Gabriel', 'Orphiano', 'BSIT', 'S2');
        insert into students values (002, 'Tessia', 'Eralith', 'MAGIC', 'S5');
        insert into students values (003, 'Kevin', 'Voss', 'SWORD', 'S3');
        insert into students values (004, 'Ren', 'Dover', 'SWORD', 'S5');
        insert into students values (005, 'Cecil', 'Legacy', 'MAGIC', 'S2');
    --check the table if the inserted values are observable using the syntax "select * from students;

    --updating, let's say you want to change the course of Gabriel into magic.
        update students set course = 'MAGIC' where first_name = 'Gabriel';
    --let's say you want to change the section of those who have sword courses into s5
        update students set section = 'S5' where course = 'SWORD';
        --check if the course of gabriel changed.

    --inserting another value, let's say that new studentS come into the school
        insert into students values (0023, 'Arthur', 'Leywin', 'SWORD', 'S6');
        insert into students values (0024, 'Elijah', 'Sever', 'ENGINEER', 'S1');
        --write a query to show all the data in student table.

    --deleting, delete a selected row of data from the table. let's say you want to delete all the data of kevin.
        delete from students where first_name = 'Kevin';

    /*different ways of writing a query there are various of ways to write a query such as contenating both tables 
    or using selected range of values to select data using between or create a query to display all data in descending order*/

    --contetanation of two columns and set it as one. concat both first name and last name of all student and display it as full name.
        select first_name ||' '|| last_name as full_name from students;
    
    --writing a query that only shows a specific range of values
        select first_name, last_name, course, section from students where student_num between 001 and 005;
            --it only shows the data of students whose student number range between 1 to 5

    --writing a query that shows students data in descending order by the first letter of their name.
        select student_num, first_name, last_name, course, section from students order by first_name desc;
    



