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

@WebServlet("/update-task")
public class TaskUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String dueDateStr = request.getParameter("dueDate");
        String status = request.getParameter("status");


        Date dueDate = Date.valueOf(dueDateStr);
        Task task = new Task(id, title, description, dueDate, status);
        new TaskDAO().updateTask(task);

        response.sendRedirect("tasks");
    }
}

