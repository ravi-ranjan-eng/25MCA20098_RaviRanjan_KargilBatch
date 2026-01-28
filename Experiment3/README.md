👤 Student Details

Name Ravi Ranjan Kumar

UID 25MCA20098

Branch MCA General

Semester II

Date of Performance 27/01/2026

🎯 Aim

To implement conditional logic in PostgreSQL using CASE expressions and IF–ELSE constructs for classification, validation, and rule-based decision-making.

🛠️ Tools Used

🐘 PostgreSQL

🎓 Objectives

Objective	      

✔️ Conditional Execution	Understand how SQL evaluates conditions

✔️ CASE Expressions	Apply condition-based classification

✔️ IF–ELSE Logic	Use PL/pgSQL to control procedural flow

✔️ Data Categorization	Implement grading and violation logic

✔️ Backend Skills	Prepare for interviews & backend roles

📘 Theory Overview

🔹 CASE Expression

Used in SELECT, UPDATE, ORDER BY:

Sequential condition checking

Supports simple & searched CASE

Ideal for classification and status mapping

🔹 IF–ELSE Construct

Used in PL/pgSQL:

Supports multi-level decision flows

Perfect for backend rule validation

Used in functions, procedures, and DO blocks

🧪 Experiment Steps

Step 1 – CASE Classification

Classify violation counts as:

Count  ->   Range	Category

0	   ->   No Violation

1–3	    ->  Minor Violation

4–8	     -> Moderate Violation

≥ 9	     ->  Critical Violation

Step 2 – Update Using CASE

Use CASE inside UPDATE to assign:

Approved

Needs Review

Rejected

Step 3 – IF–ELSE Block

Print messages based on violation count using a PL/pgSQL DO block.

Step 4 – Grading Students

Create a grade mapping using CASE based on marks.

Step 5 – Custom Sorting

Sort rows based on severity using CASE inside ORDER BY.

📁 SQL Scripts

All SQL files are provided inside /sql/.

✔️ 01_create_tables.sql

<img width="573" height="241" alt="image" src="https://github.com/user-attachments/assets/1aefa313-a452-4a5f-b505-01db8482121e" />



✔️ 02_case_classification.sql

<img width="603" height="211" alt="image" src="https://github.com/user-attachments/assets/8ede94cb-fbca-4c9e-95b0-d38a5318679f" />


✔️ 03_case_update_status.sql

<img width="522" height="186" alt="image" src="https://github.com/user-attachments/assets/4bc3577d-7f30-4fdc-908a-3a86a5f9186b" />


✔️ 04_if_else_block.sql

<img width="446" height="480" alt="image" src="https://github.com/user-attachments/assets/1a8863db-763f-42ad-b7df-53dc206d14a7" />


✔️ 05_grading_system.sql

<img width="446" height="209" alt="image" src="https://github.com/user-attachments/assets/0458005e-cab9-4df6-82bc-8732d1e728b7" />


✔️ 06_custom_sorting.sql

<img width="455" height="210" alt="image" src="https://github.com/user-attachments/assets/0a970d97-7777-4ab4-8a2a-88ac6236393f" />



📊 Input / Output Analysis

#Input

Schema names

Violation counts

Student names

Marks

#Output

Violation categories

Approval statuses

Procedural decision messages

Student grades

Severity-based sorting

🎯 Learning Outcomes

Strong understanding of SQL conditional logic

Ability to use CASE effectively

Practical knowledge of IF–ELSE blocks

Ability to automate backend decisions

Preparedness for interviews and real backend applications
