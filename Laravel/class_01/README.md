
# Laravel Course Class 01 - Introduction to Laravel

## What is Laravel?

Laravel is a powerful PHP web framework designed to make web application development easier and more efficient. It provides a robust set of tools and features for building modern, scalable, and maintainable applications. With Laravel, developers can focus on building their applications without reinventing the wheel, thanks to its modular approach, expressive syntax, and built-in solutions for common tasks such as routing, sessions, and authentication.

## Why Use Laravel?

Laravel is highly favored for web application development for several reasons:
- **Elegant Syntax**: Laravel offers a clean and expressive syntax that makes development faster and more enjoyable.
- **MVC Architecture**: Follows the Model-View-Controller (MVC) design pattern, which improves the organization of the code.
- **Security**: Laravel provides strong security features, such as password hashing, CSRF protection, and SQL injection prevention.
- **Artisan CLI**: Laravel includes a command-line interface called Artisan, which automates many repetitive tasks, making the development process more streamlined.
- **Blade Templating Engine**: Laravel's built-in templating engine, Blade, makes it easy to create dynamic and reusable views.
- **Eloquent ORM**: Laravel’s ORM (Object-Relational Mapping) simplifies database interaction by allowing you to work with databases using PHP syntax instead of raw SQL queries.

## Prerequisites

Before you can start building a Laravel application, make sure you have the following installed on your machine:

- **PHP**: Version 8.0 or higher is required. [PHP Installation Guide](https://www.php.net/manual/en/install.php)
- **Composer**: The dependency manager for PHP to install Laravel and its dependencies. [Download Composer](https://getcomposer.org/download/)
- **Web Server**: Such as Apache or Nginx, or you can use Laravel's built-in development server.

## How to Create a Laravel Application

Follow these steps to create a new Laravel application:

### Step 1: Install Laravel via Composer

To create a new Laravel application, run the following command in your terminal:

```bash
composer create-project laravel/laravel class_01
```

This will create a new Laravel project in a folder called `class_01`.

### Step 2: Navigate to Your Project

Once the installation is complete, navigate into your Laravel project directory:

```bash
cd class_01
```

### Step 3: Serve Your Application

You can use Laravel’s built-in development server to serve your application locally:

```bash
php artisan serve
```

Open your browser and navigate to `http://127.0.0.1:8000`. You should see the Laravel welcome page.

## Creating Routes and Views

Now, let's create three routes and corresponding views in your Laravel application.

### Step 1: Define Routes in `web.php`

Open the `routes/web.php` file and add the following routes:

```php
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/about-us', function () {
    return view('about');
});

Route::get('/contact', function () {
    return view('contact');
});
```

### Step 2: Create the Views

Next, create the view files for each route.

1. **Welcome View**: Open the `resources/views` directory and create a file called `welcome.blade.php`. Add the following content:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to Our Laravel Application!</h1>
</body>
</html>
```

2. **About Us View**: In the same directory, create a file called `about.blade.php`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
</head>
<body>
    <h1>About Us</h1>
    <p>This is the About Us page of our Laravel application.</p>
</body>
</html>
```

3. **Contact View**: Now, create a file called `contact.blade.php`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
</head>
<body>
    <h1>Contact Us</h1>
    <p>Feel free to reach out to us at any time!</p>
</body>
</html>
```

### Step 3: Run the Application

Now that your routes and views are set up, you can run the application again using the `php artisan serve` command:

```bash
php artisan serve
```

Visit the following URLs to see your routes in action:
- `http://127.0.0.1:8000/` for the Welcome page.
- `http://127.0.0.1:8000/about-us` for the About Us page.
- `http://127.0.0.1:8000/contact` for the Contact Us page.

## How to Run

1. Ensure that your environment meets the prerequisites (PHP, Composer, etc.).
2. Clone the project from GitHub or create a new Laravel project as outlined above.
3. Navigate into the project directory and run:

   ```bash
   php artisan serve
   ```

4. Open your browser and go to `http://127.0.0.1:8000` to view the application.

## Conclusion

In this Laravel course, we have covered the basics of Laravel, including its features, prerequisites, and how to create a new Laravel application. We have also learned how to define routes and create corresponding views. By following these steps, you can create your own Laravel application and start building your own web applications. Remember to keep practicing and exploring the many features that Laravel has to offer.