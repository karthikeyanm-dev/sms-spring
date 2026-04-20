<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f9; }
        .navbar { background: #fff; border-bottom: 1px solid #e0e0e0; padding: 12px 24px; }
        .brand { font-size: 18px; font-weight: 700; color: #2563eb; text-decoration: none; }
        .nav-link { color: #555; font-size: 14px; padding: 6px 14px; border-radius: 6px; }
        .nav-link:hover, .nav-link.active { background: #eff6ff; color: #2563eb; }
        .hero { text-align: center; padding: 80px 20px 50px; }
        .hero h1 { font-size: 38px; font-weight: 700; color: #1e293b; margin-bottom: 12px; }
        .hero p { font-size: 16px; color: #64748b; margin-bottom: 32px; }
        .hero-btns { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
        .btn-blue { background: #2563eb; color: #fff; padding: 11px 26px; border-radius: 8px; text-decoration: none; font-size: 15px; font-weight: 600; }
        .btn-blue:hover { background: #1d4ed8; color: #fff; }
        .btn-white { background: #fff; color: #1e293b; border: 1px solid #d1d5db; padding: 11px 26px; border-radius: 8px; text-decoration: none; font-size: 15px; font-weight: 600; }
        .btn-white:hover { background: #f1f5f9; color: #1e293b; }
        .cards { display: flex; gap: 20px; justify-content: center; padding: 20px; flex-wrap: wrap; max-width: 800px; margin: 0 auto 60px; }
        .card { background: #fff; border: 1px solid #e2e8f0; border-radius: 14px; padding: 32px 28px; width: 320px; text-decoration: none; color: inherit; display: block; }
        .card:hover { border-color: #93c5fd; box-shadow: 0 4px 16px rgba(37,99,235,0.08); }
        .card.featured { border: 2px solid #2563eb; }
        .card-icon { width: 44px; height: 44px; border-radius: 10px; display: flex; align-items: center; justify-content: center; margin-bottom: 16px; font-size: 20px; }
        .card h2 { font-size: 17px; font-weight: 700; margin-bottom: 8px; }
        .card p { font-size: 13px; color: #64748b; line-height: 1.6; margin-bottom: 14px; }
        .card-link { font-size: 13px; font-weight: 600; color: #2563eb; }
        footer { text-align: center; padding: 20px; font-size: 13px; color: #94a3b8; border-top: 1px solid #e2e8f0; background: #fff; }
    </style>
</head>
<body>

<nav class="navbar d-flex justify-content-between align-items-center">
    <a href="/home" class="brand">StudentApp</a>
    <div class="d-flex gap-1">
        <a href="/home"class="nav-link active">Home</a>
        <a href="/all-students" class="nav-link">All Students</a>
        <a href="/add-student" class="nav-link">Add Student</a>
    </div>
</nav>

<div class="hero">
    <h1>Student Management</h1>
    <p>Add, view, edit and delete student records in one place.</p>
    <div class="hero-btns">
        <a href="/all-students" class="btn-blue">View Students</a>
        <a href="/add-student" class="btn-white">+ Add Student</a>
    </div>
</div>

<div class="cards">
    <a href="/all-students" class="card featured">
        <div class="card-icon" style="background:#eff6ff;">&#128101;</div>
        <h2>All Students</h2>
        <p>Browse all enrolled students. Edit or delete records from the student cards.</p>
        <div class="card-link">View all &rarr;</div>
    </a>
    <a href="/add-student" class="card">
        <div class="card-icon" style="background:#f0fdf4;">&#10010;</div>
        <h2>Add Student</h2>
        <p>Enrol a new student by filling in their name, age, gender and course.</p>
        <div class="card-link" style="color:#16a34a;">Add now &rarr;</div>
    </a>
</div>

<footer>&copy; 2026 StudentApp Made with 💙 by Karthi</footer>
</body>
</html>
