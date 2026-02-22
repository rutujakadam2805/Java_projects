Bank_application
A banking application developed using Core Java and Hibernate ORM for efficient database management. The system supports account creation, deposit, withdrawal, balance inquiry, and transaction tracking with secure session and transaction management

Tech Stack
Language: Java ORM Framework: Hibernate Database: MySQL Build Tool: Maven Architecture: Layered Architecture (Entity → DAO → Service → Main)

Features
👤 User Functionalities Create New Bank Account Deposit Money Withdraw Money Check Account Balance View Transaction History

System Functionalities
Hibernate ORM Mapping using Annotations Session & Transaction Management CRUD Operations Input Validation Exception Handling Database Integration (MySQL)

#Project Architecture The application follows a layered structure: Entity Layer → Account, Transaction classes DAO Layer → Handles database operations using Hibernate Service Layer → Contains business logic Main Layer → Console-based user interface
