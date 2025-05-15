package com.taskmanagementsystem.controllers.taskServlet;

import com.taskmanagementsystem.dao.TaskDAO;
import com.taskmanagementsystem.models.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.sql.Date;

@WebServlet("/add-task")
public class TaskCreateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String dueDateStr = request.getParameter("dueDate");
        String status = request.getParameter("status");

        Date dueDate = Date.valueOf(dueDateStr);

        Task task = new Task(title, description, dueDate, status);
        new TaskDAO().addTask(task);

        response.sendRedirect("tasks");
    }
}
