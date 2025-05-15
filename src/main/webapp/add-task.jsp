<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Add New Task</h1>
   <form action="add-task" method="post">
       <label for="title">Title:</label><br>
       <input type="text" id="title" name="title" required><br><br>

       <label for="description">Description:</label><br>
       <textarea id="description" name="description" rows="4" required></textarea><br><br>

       <label for="dueDate">Due Date:</label><br>
       <input type="date" id="dueDate" name="dueDate" required><br><br>

       <label for="status">Status:</label><br>
       <select id="status" name="status">
           <option value="Pending">Pending</option>
           <option value="Completed">Completed</option>
       </select><br><br>

       <button type="submit" class="btn">Save Task</button>
   </form>
    <a href="task-dashboard.jsp" class="btn">Cancel</a>
</div>
</body>
</html>
