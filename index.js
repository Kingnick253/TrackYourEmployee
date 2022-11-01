
// View all Departments
//SELECT * FROM departments

// View all Roles
// SELECT * FROM  roles

// View all EMPLOYEE
// SELECT * FROM  employee;

const mysql = require("mysql2");
const inquirer = require("inquirer");
// require("console.table");

const db_connection = mysql.createConnection(
    {
        host: "localhost",
        user: "root",
        password: "",
        database: "employee_trackerdb",
    },
    console.log("Connected to Employee Tracker db")
);


function startApp(){
    inquirer
        .prompt([
            {
                message:"Hello Friend",
                name: "options",
                type: "list",
                choices: [
                    "View All Departments",
                    "Add New Department",
                    "View All Roles",
                    "Add New Role",
                    "Update A Role",
                    "View All Employees",
                    "Add New Employee",
                    "Done"
                ],

            },
        ])
        .then((response) =>{
            switch (response.options){
                case "View All Departments":
                    viewAllDepartments();
                    break;
                case "Add New Department":
                    addNewDepartment();
                    break;
            }
        });
}

startApp();

    function viewAllDepartments(){
        db_connection.query("SELECT * FROM `departments`", function (err, result){
            if(err) throw err;
           console.table(result);
           startApp();
        });
    }

    function addNewDepartment(){
        inquirer
            .prompt([
                {
                    message: "What is the name for your new Department?",
                    name: "newDepartment",
                    type: "input",
                },
            ])
            .then((response) => {
                db_connection.query("INSERT INTO departments (department_name) VALUES (?)",
                response.newDepartment,
                (err, results) => {
                    if(err) throw err;
                }
                );
                startApp();
            });


    }
// CREATE new department

// prompt the user for the " name" of the department

    // THEN run the query
    // INSERT INTO department (name)
    // VALUES  ("Sales");
//       
    // THEN as the user what they want to do next

// create a new role

//  get the existing department form the 'department' table
    function createRole(){

        // THEN // Prompt the user for the "title", "salary" and department for the role
        
        // Then Run the query
        // INSERT INTO  role (title, salary, department_id)
        // VALUES ("Manager", 120000, 1)
        
        // THEN ask the user what they want to do next
        
    }