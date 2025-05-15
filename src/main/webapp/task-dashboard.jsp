<%@ page import="java.util.List" %>
<%@ page import="com.taskmanagementsystem.models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Task Dashboard</h1>
    <a href="add-task.jsp" class="btn">Add New Task</a>

    <table>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Due Date</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <%
            List<Task> tasks = (List<Task>) request.getAttribute("tasks");
            if (tasks != null) {
                for (Task task : tasks) {
        %>
        <tr>
            <td><%= task.getTitle() %></td>
            <td><%= task.getDescription() %></td>
            <td><%= task.getDueDate() %></td>
            <td><%= task.getStatus() %></td>
            <td>
                <form action="edit-task" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= task.getId() %>">
                    <button type="submit" class="btn">Edit</button>
                </form>
                <form action="delete-task" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= task.getId() %>">
                    <button type="submit" class="btn btn-delete">Delete</button>
                </form>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</div>
</body>
</html>
