INSERT INTO departments( department_name )
VALUES ("Sales"),
       ("IT"),
       ("FrontDesk"),
       ("HR"),
       ("CustomerService");

       INSERT INTO role (title, salary, department_id)
VALUES ( "Sales Rep", 70000, 1),
       ( "Head Tech", 160000, 2),
       ( "Receptionist", 50000, 3),
       ( "PR mananger", 95000, 4),
       ( "CS Rep", 85000, 5);



       INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ("Reinah", "Smith", 1,  NULL),
       ("Andre", "Webster", 2, NULL),
       ("Malik", "White", 2, NULL),
       ("Alma", "Brown", 3,  NULL),
       ("Kevin", "Jackson", 1, NULL);