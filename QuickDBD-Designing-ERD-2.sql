-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Kkyc3h
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Challenge 9

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL
    PRIMARY KEY "dept_no"
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER  PRIMARY KEY NOT NULL,
    "dept_no" VARCHAR   NOT NULL
    PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER  PRIMARY KEY NOT NULL
    PRIMARY KEY "emp_no"
);

CREATE TABLE "employee" (
    "emp_no" INTEGER   PRIMARY KEY NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL
    PRIMARY KEY "emp_no"
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER  PRIMARY KEY  NOT NULL,
    "salary" INTEGER   NOT NULL
    PRIMARY KEY "emp_no"
);

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL
    PRIMARY KEY "titled_id"
);

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_emp" ("dept_no");

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_name" FOREIGN KEY("dept_name")
REFERENCES "dept_emp" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

