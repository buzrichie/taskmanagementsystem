package com.taskmanagementsystem.controllers.taskServlet;

import com.taskmanagementsystem.dao.TaskDAO;
import com.taskmanagementsystem.models.Task;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/tasks")
public class TaskListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaskDAO taskDAO = new TaskDAO();
        List<Task> taskList = taskDAO.getAllTasks();

        // Get query parameters
        String status = request.getParameter("status");
        String sort = request.getParameter("sort");
        String query = request.getParameter("query");

        // Filter by status
        if (status != null && !status.isEmpty()) {
            taskList = taskList.stream()
                    .filter(task -> task.getStatus().equalsIgnoreCase(status))
                    .collect(Collectors.toList());
        }

        // Search by title or description
        if (query != null && !query.isEmpty()) {
            String keyword = query.toLowerCase();
            taskList = taskList.stream()
                    .filter(task ->
                            task.getTitle().toLowerCase().contains(keyword) ||
                                    task.getDescription().toLowerCase().contains(keyword))
                    .collect(Collectors.toList());
        }

        // Sort by due date
        if (sort != null && !sort.isEmpty()) {
            Comparator<Task> byDueDate = Comparator.comparing(Task::getDueDate);
            if (sort.equals("desc")) {
                byDueDate = byDueDate.reversed();
            }
            taskList.sort(byDueDate);
        }

        // Send filtered/sorted/searched list to view
        request.setAttribute("tasks", taskList);
        request.getRequestDispatcher("task-dashboard.jsp").forward(request, response);
    }

}
