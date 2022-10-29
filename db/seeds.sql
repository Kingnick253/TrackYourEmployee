INSERT INTO departments(name)
VALUES ("Sales"),
       ("IT"),
       ("FrontDesk"),
       ("HR"),
       ("CustomerService");

       INSERT INTO role(title, salary, deparentment_id)
VALUES ( "Sales Rep", 70000, 1),
       ( "Head Tech", 160000, 2),
       ( "Receptionist", 50000, 3),
       ( "PR mananger", 95000, 4),
       ( "CS Rep", 85000, 5);



       INSERT INTO employee(first_name, last_name, manager_id, role_id)
VALUES ("Reinah", "Smith", 1,  1),
       ("Andre", "Webster", 2, 2),
       ("Malik", "White", 2, 2),
       ("Alma", "Brown", NULL, 4 ),
       ("Kevin", "Jackson", 1, 5);