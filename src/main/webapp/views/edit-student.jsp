<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Student</title>
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
    .btn-row { display: flex; gap: 10px; margin-top: 6px; }
    .btn-save { flex: 1; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 8px; font-size: 15px; font-weight: 600; cursor: pointer; }
    .btn-save:hover { background: #1d4ed8; }
    .btn-cancel { flex: 1; padding: 12px; background: #f1f5f9; color: #374151; border: 1px solid #d1d5db; border-radius: 8px; font-size: 15px; font-weight: 600; text-decoration: none; text-align: center; }
    .btn-cancel:hover { background: #e2e8f0; color: #374151; }
    .id-badge { display: inline-block; background: #eff6ff; color: #2563eb; font-size: 12px; font-weight: 600; padding: 3px 10px; border-radius: 99px; margin-bottom: 20px; }
    footer { text-align: center; padding: 20px; font-size: 13px; color: #94a3b8; border-top: 1px solid #e2e8f0; background: #fff; margin-top: 40px; }
  </style>
</head>
<body>

<nav class="navbar d-flex justify-content-between align-items-center">
  <a href="/" class="brand">StudentApp</a>
  <div class="d-flex gap-1">
    <a href="/"               class="nav-link">Home</a>
    <a href="/all-students"       class="nav-link">All Students</a>
    <a href="/add-student"   class="nav-link">Add Student</a>
  </div>
</nav>

<div class="page-wrap">
  <h1>Edit Student</h1>
  <p>Update the student details below and save.</p>

  <div class="form-card">
    <span class="id-badge">Student ID: #${student.id}</span>

    <form method="post" action="/submit">
      <input type="hidden" name="id" value="${student.id}" />

      <div class="form-group">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" value="${student.name}" required />
      </div>

      <div class="form-group">
        <label for="age">Age</label>
        <input type="number" id="age" name="age" value="${student.age}" min="10" max="60" required />
      </div>

      <div class="form-group">
        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
          <option value="">Select gender</option>
          <option value="Male"   <c:if test="${student.gender == 'Male'}">selected</c:if>>Male</option>
          <option value="Female" <c:if test="${student.gender == 'Female'}">selected</c:if>>Female</option>
          <option value="Other"  <c:if test="${student.gender == 'Other'}">selected</c:if>>Other</option>
        </select>
      </div>

      <div class="form-group">
        <label for="course">Course</label>
        <select id="course" name="course" required>
          <option value="">Select course</option>
          <c:forEach var="c" items="${['Java Spring','React','C++','Python','Data Science','Machine Learning','Node.js','Angular','Flutter','Cyber Security','Cloud Computing','DevOps','UI/UX Design']}">
            <option value="${c}" <c:if test="${student.course == c}">selected</c:if>>${c}</option>
          </c:forEach>
        </select>
      </div>

      <div class="btn-row">
        <button type="submit" class="btn-save">Save Changes</button>
        <a href="/all-students" class="btn-cancel">Cancel</a>
      </div>
    </form>
  </div>
</div>

<footer>&copy; 2026 StudentApp Made with 💙 by Karthi</footer>

</body>
</html>
