# **Laravel Course: CRUD Application** 🛠️


## **Overview** 📝  

This Laravel CRUD application manages employee data, providing a seamless interface to **Create**, **Read**, **Update**, and **Delete (CRUD)** employees. It uses **query builder** for database interactions and **Bootstrap** for styling.  

---

## **Files** 📂  

- **Migration File:** Creates the `employees` table in the database.  
- **Controller:** Handles CRUD operations for employee data.  
- **Routes:** Registers paths to different views and controller actions.  
- **Views:** Blade templates to manage and display employees.

---

## **Getting Started** 🚀  

This guide will walk you through setting up the Laravel CRUD application from scratch and running it on your local environment.  

---

## **Prerequisites** ⚙️  

Ensure you have the following tools installed:  

1. **PHP** (≥ 8.0)  
2. **Composer**  
3. **Laravel Installer**  
4. **MySQL**  

---

## **Project Setup** 🛠️  

Follow these steps to build the **crud_app**:  

1. **Create a new Laravel project:**  

   ```bash
   composer create-project laravel/laravel crud_app
   cd crud_app
   ```

2. **Configure the database:**  
   Open `.env` and update:  

   ```plaintext
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=crud_app
   DB_USERNAME=root
   DB_PASSWORD=yourpassword

   SESSION_DRIVER=file
   ```

3. **Create 'employees' table migration:**  

   ```bash
   php artisan make:migration create_employees_table
   ```
   
   Update the migration file with:
   
   ```php
   Schema::create('employees', function (Blueprint $table) {
       $table->id();
       $table->string('name');
       $table->string('email')->unique();
       $table->string('designation');
       $table->integer('age');
       $table->timestamps();
   });
   ```

4. **Run the migration:**  
   ```bash
   php artisan migrate
   ```

5. **Create Employee Controller:**  
   ```bash
   php artisan make:controller EmployeeController
   ```

6. **Define Routes:**  
   In `routes/web.php`:  
   ```php
   Route::get('/employees', [EmployeeController::class, 'index']);
   Route::get('/employees/add', [EmployeeController::class, 'create']);
   Route::post('/employees/add', [EmployeeController::class, 'store']);
   ```

7. **Create Views:**  
   - **Employee List View** (`resources/views/employees/index.blade.php`):  
     ```html
     <table class="table">
         <thead>
             <tr>
                 <th>ID</th><th>Name</th><th>Email</th><th>Designation</th><th>Age</th>
                 <th>Edit</th><th>Delete</th>
             </tr>
         </thead>
         <tbody>
             @foreach ($employees as $employee)
                 <tr>
                     <td>{{ $employee->id }}</td>
                     <td>{{ $employee->name }}</td>
                     <td>{{ $employee->email }}</td>
                     <td>{{ $employee->designation }}</td>
                     <td>{{ $employee->age }}</td>
                     <td><a href="#" class="btn btn-primary">✏️ Edit</a></td>
                     <td><a href="#" class="btn btn-danger">🗑️ Delete</a></td>
                 </tr>
             @endforeach
         </tbody>
     </table>
     ```

   - **Create Employee View** (`resources/views/employees/create.blade.php`):  
     ```html
     <form action="/employees/add" method="POST">
         @csrf
         <label>Name:</label><input type="text" name="name" required><br>
         <label>Email:</label><input type="email" name="email" required><br>
         <label>Designation:</label><input type="text" name="designation" required><br>
         <label>Age:</label><input type="number" name="age" required><br>
         <button type="submit" class="btn btn-success">➕ Add Employee</button>
     </form>
     ```

8. **Serve the Application:**  
   ```bash
   php artisan serve
   ```
   Access the app at:  
   `http://127.0.0.1:8000/employees`

---

## **Project Structure** 🗂️  
```
crud_app/
├── app/Http/Controllers/EmployeeController.php
├── database/migrations/create_employees_table.php
├── resources/views/employees/
│   ├── index.blade.php
│   └── create.blade.php
├── routes/web.php
└── .env
```

---

## **Key Learnings** 🎓  
- **Query Builder:** Simplified database interactions.  
- **Routing:** Handled navigation between pages.  
- **Blade Templates:** Created reusable views.  
- **CSRF Protection:** Managed form security with `@csrf`.  

---

## **Class Highlights** 🏫  
1. **CRUD Operations:** Implemented Create, Read, Update, and Delete.  
2. **Query Builder:** Managed data efficiently without raw SQL.  
3. **Routing and Navigation:** Connected views with actions.  
4. **Blade Templating:** Rendered dynamic data in views.  

---

## **Conclusion** ✅  
This **Laravel CRUD app** introduces students to core Laravel concepts, such as query builder, routing, and templating. Students can further enhance it by adding **validation**, **pagination**, and **update/delete functionality** for a more robust application.