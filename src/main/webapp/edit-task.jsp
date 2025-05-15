<%@ page import="com.taskmanagementsystem.models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    Task task = (Task) request.getAttribute("task");
    if (task == null) {
%>
    <div class="container">
        <h2>Task not found.</h2>
    </div>
<%
    } else {
%>
<div class="container">
    <h1>Edit Task</h1>
    <form action="update-task" method="post">
        <input type="hidden" name="id" value="<%= task.getId() %>">

        <label for="title">Title:</label><br>
        <input type="text" id="title" name="title" value="<%= task.getTitle() %>" required><br><br>

        <label for="description">Description:</label><br>
        <textarea id="description" name="description" rows="4" required><%= task.getDescription() %></textarea><br><br>

        <label for="dueDate">Due Date:</label><br>
        <input type="date" id="dueDate" name="dueDate" value="<%= task.getDueDate() %>" required><br><br>

        <label for="status">Status:</label><br>
        <select id="status" name="status">
            <option value="Pending" <%= "Pending".equals(task.getStatus()) ? "selected" : "" %>>Pending</option>
            <option value="Completed" <%= "Completed".equals(task.getStatus()) ? "selected" : "" %>>Completed</option>
        </select><br><br>

        <button type="submit" class="btn">Update Task</button>
        <a href="task-dashboard.jsp" class="btn">Cancel</a>
    </form>
</div>
<% } %>
</body>
</html>
