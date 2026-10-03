# Booking System ERD

A relational database model for a multi-service booking platform.

## Entity Relationships

```mermaid
erDiagram
    USERS ||--o{ BOOKINGS : makes
    ORGANIZATIONS ||--o{ SERVICES : provides
    ORGANIZATIONS ||--o{ EMPLOYEES : employs
    SERVICES ||--o{ BOOKINGS : receives
    EMPLOYEES ||--o{ BOOKINGS : handles

    USERS {
        uuid id PK
        varchar email
        varchar full_name
        timestamp created_at
    }

    ORGANIZATIONS {
        uuid id PK
        varchar name
        timestamp created_at
    }

    SERVICES {
        uuid id PK
        uuid organization_id FK
        varchar name
        text description
    }

    EMPLOYEES {
        uuid id PK
        uuid organization_id FK
        varchar name
    }

    BOOKINGS {
        uuid id PK
        uuid user_id FK
        uuid service_id FK
        uuid employee_id FK
        timestamp start_time
        timestamp end_time
        varchar status
        timestamp created_at
    }

Design Principles
UUID primary keys
Explicit foreign-key relationships
Referential integrity
Normalized relational structure
Clear separation of users, organizations, services, employees, and bookings
Indexing considerations for frequent booking queries
Designed for maintainability and future expansion
