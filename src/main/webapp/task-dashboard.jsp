<%@ page import="java.util.List" %>
<%@ page import="com.taskmanagementsystem.models.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<div class="dashboard">

    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-header">
            <h2>TaskMaster</h2>
        </div>
        <nav class="sidebar-nav">
            <ul>
                <li class="active"><a href="./tasks"><i class="fas fa-home"></i>Dashboard</a></li>
                <li><a href="./tasks"><i class="fas fa-tasks"></i> My Tasks</a></li>
            </ul>
        </nav>
        <div class="sidebar-footer">
            <div class="user-info">
                <div class="user-avatar">
                    <img src="https://via.placeholder.com/40" alt="User Avatar">
                </div>
                <div class="user-details">
                    <p class="user-name">Richmond</p>
                    <p class="user-role">Admin</p>
                </div>
            </div>
        </div>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
        <header class="content-header">
            <div class="header-left">
                <h1>Task Dashboard</h1>
            </div>
            <div class="header-right">
               <div class="search-box">
                   <form method="get" action="tasks">
                       <input type="text" name="query" placeholder="Search tasks..." value="<%= request.getParameter("query") != null ? request.getParameter("query") : "" %>">
                       <button type="submit"><i class="fas fa-search"></i></button>
                   </form>
               </div>

                <div class="notification">
                    <i class="fas fa-bell"></i>
                    <span class="badge">
                   <%
                           List<Task> tasksCount = (List<Task>) request.getAttribute("tasks");
                           if (tasksCount != null) {
                       %>
                           <%= tasksCount.size() %>
                       <%
                           } else {
                       %>
                           0
                       <%
                           }
                       %>
                    </span>
                </div>
            </div>
        </header>

        <!-- Task Management Section -->
        <section class="task-section">
            <div class="section-header">
                <h2>Task Management</h2>
               <form method="get" action="tasks" style="margin-bottom: 20px;">
                   <label for="status">Filter by Status:</label>
                   <select name="status" id="status">
                       <option value="">All</option>
                       <option value="Pending" <%= "Pending".equals(request.getParameter("status")) ? "selected" : "" %>>Pending</option>
                       <option value="Completed" <%= "Completed".equals(request.getParameter("status")) ? "selected" : "" %>>Completed</option>
                   </select>

                   <label for="sort">Sort by Due Date:</label>
                   <select name="sort" id="sort">
                       <option value="">None</option>
                       <option value="asc" <%= "asc".equals(request.getParameter("sort")) ? "selected" : "" %>>Ascending</option>
                       <option value="desc" <%= "desc".equals(request.getParameter("sort")) ? "selected" : "" %>>Descending</option>
                   </select>

                   <button type="submit">Apply</button>
               </form>

                <a href="add-task.jsp" class="btn btn-primary">
                    <i class="fas fa-plus"></i> Add New Task
                </a>
            </div>

            <div class="task-table-container">
                <table class="task-table">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Due Date</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        List<Task> tasks = (List<Task>) request.getAttribute("tasks");
                        if (tasks != null) {
                            for (Task task : tasks) {
                    %>
                        <tr>
                            <td><%= task.getTitle() %></td>
                            <td><%= task.getDescription() %></td>
                            <td><%= task.getDueDate() %></td>
                            <td>
                                <span class="status-badge status-<%= task.getStatus().toLowerCase().replace(" ", "-") %>">
                                    <%= task.getStatus() %>
                                </span>
                            </td>
                            <td class="actions">
                                <form action="edit-task" method="get" style="display:inline;">
                                    <input type="hidden" name="id" value="<%= task.getId() %>">
                                    <button class="btn-icon btn-edit" title="Edit"><i class="fas fa-edit"></i></button>
                                </form>
                                <form action="delete-task" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="<%= task.getId() %>">
                                    <button class="btn-icon btn-delete" title="Delete"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    <%
                            }
                        } else {
                    %>
                        <tr><td colspan="5">No tasks found.</td></tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</div>

</body>
</html>
