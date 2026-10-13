# VacationManagementService

## Overview

VacationManagementService is a web-based vacation management system designed to simplify the process of requesting, managing, and tracking employee vacations and sick leave.

The application consists of a RESTful backend API, a persistent database, and graphical user interfaces for employees and supervisors. It supports vacation request management, approval workflows, employee absence tracking, and vacation balance management.

## Features and Functionalities

### 1. User Management
- Employee and supervisor user roles.
- Employee information management, including user ID, name, email address, role, and available vacation days.
- Assignment of employees to their respective supervisors.
- Role-based access to relevant employee and vacation information (each employee is signs up with a an associated code for their role and the system automatically stores their role).

### 2. Vacation Request Management
- Submission of vacation requests with start dates, end dates, and optional comments.
- Calculation and display of requested vacation days.
- Tracking of vacation request statuses:
  - `PENDING`
  - `APPROVED`
  - `REJECTED`
  - `WITHDRAWN`
  - `SICK`
- Validation of vacation requests, including date ranges and available vacation balances.
- Overview of submitted requests and their current statuses.

### 3. Vacation Approval Workflow
- Supervisor dashboard for reviewing pending vacation requests.
- Approval or rejection of employee vacation requests.
- Access to relevant employee information and requested vacation periods.
- Automatic adjustment of vacation balances following approval.
- Prevention of duplicate approvals and unauthorized approval actions.

### 4. Vacation Withdrawal
- Withdrawal of eligible vacation requests before the vacation period begins.
- Automatic restoration of deducted vacation days when an approved vacation is withdrawn.
- Updated request statuses and vacation balances following withdrawal.

### 5. Sick Leave Management
- Conversion of approved vacation days into sick leave by authorized supervisors.
- Restoration of the corresponding vacation balance.
- Recording of converted days as sick leave.
- Visibility of sick leave information in the employee overview.
- Audit trail for tracking sick leave conversions and the supervisor responsible.

### 6. Employee Dashboard
- Personal employee information and vacation balance.
- Overview of used and remaining vacation days.
- Lists of pending, approved, rejected, and withdrawn vacation requests.
- Overview of recorded sick days.
- Ability to withdraw eligible vacation requests directly from the dashboard.

### 7. Supervisor Dashboard
- Overview of assigned employees.
- Access to pending vacation requests.
- Vacation approval and rejection functionality.
- Management of eligible vacation-to-sick-leave conversions.
- Filtering and sorting of vacation requests by employee, status, or date.

### 8. Reporting and Data Export
- Absence reports covering vacation and sick leave.
- Vacation balance reports showing total, used, remaining, and pending vacation days.
- Filtering reports by employee, absence type, status, and date range.
- Sorting report data by employee name, dates, and number of days.
- Reporting for specific months, quarters, years, or custom date ranges.
- Export of report data in supported formats, such as CSV, Excel, or PDF.
- Access restricted to information belonging to the supervisor's assigned employees.

### 9. RESTful API and Database
- RESTful backend API for application operations.
- Persistent storage of users, roles, employee-supervisor relationships, vacation requests, vacation balances, sick days, and relevant timestamps.
- Data relationships and integrity constraints to maintain consistent records.
- Transactional operations where necessary to maintain consistency between request statuses and vacation balances.

### 10. Security and Authorization
- Authentication and role-based authorization.
- Employees can access and manage their own eligible vacation requests.
- Supervisors can manage vacation requests and absence information for their assigned employees.
- Server-side authorization checks to protect restricted operations and data.
- Prevention of unauthorized actions, including employees approving their own vacation requests.

## System Architecture

The application combines three main components:

- **Frontend:** Graphical interfaces for employees and supervisors.
- **Backend:** RESTful API responsible for application logic, validation, and authorization.
- **Database:** Persistent storage for employee information, vacation requests, vacation balances, and absence records.

These components work together to provide an integrated vacation management workflow.

## Project Goal

The goal of VacationManagementService is to provide a centralized solution for managing employee vacations and sick leave, reducing manual administrative work, maintaining accurate vacation balances, and improving visibility into employee absences.

