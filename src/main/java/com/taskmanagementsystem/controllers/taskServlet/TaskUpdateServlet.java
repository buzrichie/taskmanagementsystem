package com.taskmanagementsystem.controllers.taskServlet;

import com.taskmanagementsystem.dao.TaskDAO;
import com.taskmanagementsystem.models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/update-task")
public class TaskUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String dueDateStr = request.getParameter("dueDate");
        String status = request.getParameter("status");

        Date dueDate = new Date(dueDateStr);
        Task task = new Task(id, title, description, dueDate, status);
        new TaskDAO().updateTask(task);

        response.sendRedirect("tasks");
    }
}

