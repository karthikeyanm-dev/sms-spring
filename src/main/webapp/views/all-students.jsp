<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="com.karthi.smspring.StudentModel" %>
<%

    List<StudentModel> students = (List<StudentModel>) request.getAttribute("students");

%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All Students</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { font-family: Arial, sans-serif; background: #f4f6f9; }
    .navbar { background: #fff; border-bottom: 1px solid #e0e0e0; padding: 12px 24px; }
    .brand { font-size: 18px; font-weight: 700; color: #2563eb; text-decoration: none; }
    .nav-link { color: #555; font-size: 14px; padding: 6px 14px; border-radius: 6px; }
    .nav-link:hover, .nav-link.active { background: #eff6ff; color: #2563eb; }
    .page-header { max-width: 1000px; margin: 0 auto; padding: 32px 16px 12px; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 12px; }
    .page-header h1 { font-size: 22px; font-weight: 700; margin: 0; }
    .btn-add { background: #2563eb; color: #fff; padding: 9px 20px; border-radius: 8px; text-decoration: none; font-size: 14px; font-weight: 600; }
    .btn-add:hover { background: #1d4ed8; color: #fff; }
    .count { font-size: 13px; color: #64748b; max-width: 1000px; margin: 0 auto; padding: 0 16px 12px; }
    .grid { max-width: 1000px; margin: 0 auto; padding: 0 16px 50px; display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 16px; }
    .card { background: #fff; border: 1px solid #e2e8f0; border-radius: 14px; padding: 20px; }
    .card-top { display: flex; align-items: center; gap: 14px; margin-bottom: 14px; }
    .avatar { width: 44px; height: 44px; border-radius: 50%; background: #eff6ff; color: #2563eb; display: flex; align-items: center; justify-content: center; font-size: 16px; font-weight: 700; flex-shrink: 0; }
    .avatar.female { background: #fdf2f8; color: #9333ea; }
    .student-name { font-size: 15px; font-weight: 700; margin: 0; }
    .student-course { font-size: 13px; color: #2563eb; margin: 2px 0 0; }
    .info-row { display: flex; gap: 16px; font-size: 13px; color: #64748b; margin-bottom: 16px; }
    .card-actions { display: flex; gap: 8px; border-top: 1px solid #f1f5f9; padding-top: 14px; }
    .btn-edit { flex: 1; padding: 8px; background: #eff6ff; color: #2563eb; border: none; border-radius: 7px; font-size: 13px; font-weight: 600; text-align: center; text-decoration: none; cursor: pointer; }
    .btn-edit:hover { background: #dbeafe; color: #2563eb; }
    .btn-delete { flex: 1; padding: 8px; background: #fff0f0; color: #dc2626; border: none; border-radius: 7px; font-size: 13px; font-weight: 600; cursor: pointer; }
    .btn-delete:hover { background: #fee2e2; }
    .empty { text-align: center; padding: 50px; color: #94a3b8; font-size: 14px; background: #fff; border-radius: 14px; border: 1px solid #e2e8f0; }
    footer { text-align: center; padding: 20px; font-size: 13px; color: #94a3b8; border-top: 1px solid #e2e8f0; background: #fff; }
  </style>
</head>
<body>

  <nav class="navbar d-flex justify-content-between align-items-center">
    <a href="/home" class="brand">StudentApp</a>
    <div class="d-flex gap-1">
      <a href="/home" class="nav-link">Home</a>
      <a href="/all-students" class="nav-link active">All Students</a>
      <a href="/add-student" class="nav-link">Add Student</a>
    </div>
  </nav>

  <div class="page-header">
    <h1>All Students</h1>
    <a href="/add-student" class="btn-add">+ Add Student</a>
  </div>

  <div class="count"><%= students.size() %> student<%= students.size() != 1 ? "s" : "" %> enrolled</div>

  <div class="grid">
    <% if (students.isEmpty()) { %>
      <div class="empty">No students found. <a href="add-student">Add one now</a>.</div>
    <% } else {
        for (StudentModel s : students) {
            String id = String.valueOf(s.getId());
            String name = s.getName();
            String age = String.valueOf(s.getAge());
            String gender = s.getGender();
            String course = s.getCourse();

            String initial = String.valueOf(name.charAt(0)).toUpperCase();
            String avClass = "Female".equals(gender) ? "avatar female" : "avatar";
    %>
      <div class="card">
        <div class="card-top">
          <div class="<%= avClass %>"><%= initial %></div>
          <div>
            <p class="student-name"><%= name %></p>
            <p class="student-course"><%= course %></p>
          </div>
        </div>
        <div class="info-row">
          <span>Age: <%= age %></span>
          <span>Gender: <%= gender %></span>
          <span>ID: #<%= id %></span>
        </div>
        <div class="card-actions">
          <%-- Replace href with your edit servlet/page e.g. edit-student.jsp?id=<%= id %> --%>
          <a href="/edit?id=<%= id %>" class="btn-edit">Edit</a>
          <%-- Replace action with your delete servlet e.g. DeleteStudentServlet?id=<%= id %> --%>
          <form method="post" action="delete/<%=id%>>" style="flex:1;margin:0;">
            <input type="hidden" name="id" value="<%= id %>" />
            <button type="submit" class="btn-delete" style="width:100%;"
              onclick="return confirm('Delete <%= name %>?')">Delete</button>
          </form>
        </div>
      </div>
    <%  }
       } %>
  </div>
  <footer>&copy; 2026 StudentApp Made with 💙 by Karthi</footer>
</body>
</html>
