<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Task | NovaTech Task Manager</title>
    <link rel="stylesheet" href="css/style-add.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="app-container">
        <!-- Sidebar Navigation -->
        <aside class="sidebar">
            <div class="sidebar-header">
                <div class="logo">
                    <i class="fas fa-tasks"></i>
                    <span>NovaTech</span>
                </div>
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li><a href="tasks"><i class="fas fa-home"></i> Dashboard</a></li>
                    <li class="active"><a href="tasks"><i class="fas fa-list-check"></i> Tasks</a></li>
                </ul>
            </nav>
            <div class="sidebar-footer">
                <div class="user-info">
                    <div class="user-avatar">
                        <img src="https://via.placeholder.com/40" alt="User Avatar">
                    </div>
                    <div class="user-details">
                        <p class="user-name">Richmond</p>
                        <p class="user-role">Project Manager</p>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <header class="content-header">
                <div class="page-title">
                    <h1>Add New Task</h1>
                    <p>Create a new task to track your work</p>
                </div>
                <div class="header-actions">
                    <a href="tasks" class="btn btn-outline">
                        <i class="fas fa-arrow-left"></i> Back to Tasks
                    </a>
                </div>
            </header>

            <div class="card form-card">
                <form action="add-task" method="post" class="task-form">
                    <div class="form-group">
                        <label for="title">Task Title <span class="required">*</span></label>
                        <input type="text" id="title" name="title" placeholder="Enter task title" required>
                    </div>

                    <div class="form-group">
                        <label for="description">Description <span class="required">*</span></label>
                        <textarea id="description" name="description" rows="4" placeholder="Enter task description" required></textarea>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="dueDate">Due Date <span class="required">*</span></label>
                            <div class="input-with-icon">
                                <i class="fas fa-calendar-alt"></i>
                                <input type="date" id="dueDate" name="dueDate" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="status">Status</label>
                            <div class="select-wrapper">
                                <select id="status" name="status">
                                    <option value="Not Started">Not Started</option>
                                    <option value="In Progress">In Progress</option>
                                    <option value="Pending">Pending</option>
                                    <option value="Completed">Completed</option>
                                </select>
                                <i class="fas fa-chevron-down"></i>
                            </div>
                        </div>
                    </div>

                    <div class="form-actions">
                        <a href="tasks" class="btn btn-outline">Cancel</a>
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save"></i> Save Task
                        </button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</body>
</html>