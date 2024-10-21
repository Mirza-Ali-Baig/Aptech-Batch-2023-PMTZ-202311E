# Laravel Course - Class 03: Blade Template and Migration

## Overview 🌟

In this class, we will explore Laravel's Blade templating engine and database migrations. You will learn how to create dynamic layouts using Blade and manage your database schema changes with migrations, setting a strong foundation for building robust web applications.

## Files 📂

The following files are included in this class:

- `layout/layout.blade.php`: Main layout file.
- `partials/navbar.blade.php`: Navbar partial view.
- `welcome.blade.php`: Home page view.
- `about.blade.php`: About page view.
- Migration file: Creates the `students` table.

## Getting Started 🚀

To get started with this class, ensure you have Laravel set up on your local machine. Follow the setup instructions below to prepare your environment.

## Prerequisites ✅

- Basic understanding of PHP and the Laravel framework.
- Laravel installed on your local machine.
- A working database (MySQL, SQLite, etc.) for your Laravel application.

## Setup Instructions 🛠️

1. **Create a New Laravel Project**:

   Create a new Laravel project named `class_03`:

   ```bash
   composer create-project --prefer-dist laravel/laravel class_03
   cd class_03
   ```

2. **Configure Environment**:

   Edit the `.env` file to match your database configuration:

   ```dotenv
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_database_name
   DB_USERNAME=root
   DB_PASSWORD=

   SESSION_DRIVER=file
   ```

3. **Create the Migration**:

   Use the following command to create the migration for the `students` table:

   ```bash
   php artisan make:migration create_students_table
   ```

4. **Run the Migration**:

   Apply the migration to create the `students` table:

   ```bash
   php artisan migrate
   ```

## Project Structure 🗂️

Here’s a brief overview of the project structure relevant to this class:

```
/resources
    /views
        /layout
            layout.blade.php
        /partials
            navbar.blade.php
        welcome.blade.php
        about.blade.php
/database
    /migrations
        YYYY_MM_DD_create_students_table.php
```

## Key Learnings 📘

- Understanding how to use Laravel's Blade templating engine for creating dynamic views.
- Learning to create and manage database migrations for version control of your schema.
- Familiarity with structuring your project for better organization.

## Class Highlights 🎓

- **Dynamic Layouts**: How to use `@extends`, `@section`, and `@include` to create a flexible layout system.
- **Database Migrations**: Creating a migration to define a `students` table with necessary fields.
- **Environment Configuration**: Properly setting up your `.env` file for database connectivity.

## Conclusion 🎉

This class has equipped you with essential skills in using Blade templates and handling database migrations in Laravel. Mastering these concepts is crucial for building scalable and maintainable web applications. Continue exploring Laravel's extensive features to enhance your development skills!

