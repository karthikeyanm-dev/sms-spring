<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f9; }
        .navbar { background: #fff; border-bottom: 1px solid #e0e0e0; padding: 12px 24px; }
        .brand { font-size: 18px; font-weight: 700; color: #2563eb; text-decoration: none; }
        .nav-link { color: #555; font-size: 14px; padding: 6px 14px; border-radius: 6px; }
        .nav-link:hover, .nav-link.active { background: #eff6ff; color: #2563eb; }
        .page-wrap { max-width: 520px; margin: 50px auto 60px; padding: 0 16px; }
        .page-wrap h1 { font-size: 22px; font-weight: 700; margin-bottom: 4px; }
        .page-wrap p  { font-size: 14px; color: #64748b; margin-bottom: 24px; }
        .form-card { background: #fff; border: 1px solid #e2e8f0; border-radius: 14px; padding: 28px; }
        .form-group { margin-bottom: 18px; }
        label { display: block; font-size: 13px; font-weight: 600; margin-bottom: 5px; color: #374151; }
        input, select { width: 100%; padding: 10px 12px; font-size: 14px; border: 1px solid #d1d5db; border-radius: 8px; background: #fff; color: #1e293b; outline: none; }
        input:focus, select:focus { border-color: #2563eb; }
        .btn-submit { width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 8px; font-size: 15px; font-weight: 600; cursor: pointer; margin-top: 6px; }
        .btn-submit:hover { background: #1d4ed8; }
        .btn-cancel { display: block; text-align: center; margin-top: 12px; font-size: 14px; color: #64748b; text-decoration: none; }
        .btn-cancel:hover { color: #1e293b; }
        .success { background: #f0fdf4; border: 1px solid #bbf7d0; border-radius: 8px; padding: 12px 16px; color: #166534; font-size: 14px; margin-bottom: 16px; display: none; }
        footer { text-align: center; padding: 20px; font-size: 13px; color: #94a3b8; border-top: 1px solid #e2e8f0; background: #fff; margin-top: 40px; }
    </style>
</head>
<body>

<nav class="navbar d-flex justify-content-between align-items-center">
    <a href="/home" class="brand">StudentApp</a>
    <div class="d-flex gap-1">
        <a href="/home" class="nav-link">Home</a>
        <a href="/all-students" class="nav-link">All Students</a>
        <a href="/add-student"  class="nav-link active">Add Student</a>
    </div>
</nav>

<div class="page-wrap">
    <h1>Add Student</h1>
    <p>Fill in the details below to enrol a new student.</p>

    <div class="form-card">
        <%-- Replace action with your servlet, e.g. action="StudentServlet" --%>
        <form method="get" action="/submit">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="e.g. Arun Kumar" required />
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" placeholder="e.g. 20" min="10" max="60" required />
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" required>
                    <option value="">Select gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="course">Course</label>
                <select id="course" name="course" required>
                    <option value="">Select course</option>
                    <option value="Java Spring">Java Spring</option>
                    <option value="React">React</option>
                    <option value="C++">C++</option>
                    <option value="Python">Python</option>
                    <option value="Data Science">Data Science</option>
                    <option value="Machine Learning">Machine Learning</option>
                    <option value="Node.js">Node.js</option>
                    <option value="Angular">Angular</option>
                    <option value="Flutter">Flutter</option>
                    <option value="Cyber Security">Cyber Security</option>
                    <option value="Cloud Computing">Cloud Computing</option>
                    <option value="DevOps">DevOps</option>
                    <option value="UI/UX Design">UI/UX Design</option>
                </select>
            </div>

            <button type="submit" class="btn-submit">Submit</button>
        </form>
        <a href="/all-students" class="btn-cancel">Cancel &mdash; go back to all students</a>
    </div>
</div>

<footer>&copy; 2026 StudentApp Made with 💙 by Karthi</footer>
</body>
</html>
