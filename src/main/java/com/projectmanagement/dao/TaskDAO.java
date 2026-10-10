package com.projectmanagement.dao;

import com.projectmanagement.model.Task;
import com.projectmanagement.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TaskDAO {

    public boolean addTask(Task task) {

        String sql = "INSERT INTO tasks " +
                     "(project_id, title, description, status, priority, due_date) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, task.getProjectId());
            statement.setString(2, task.getTitle());
            statement.setString(3, task.getDescription());
            statement.setString(4, task.getStatus());
            statement.setString(5, task.getPriority());
            statement.setString(6, task.getDueDate());

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateTaskStatus(int taskId, String status) {

        String sql = "UPDATE tasks SET status = ? WHERE task_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, status);
            statement.setInt(2, taskId);

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Task getTaskById(int taskId) {

        String sql = "SELECT * FROM tasks WHERE task_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, taskId);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                return new Task(
                        resultSet.getInt("task_id"),
                        resultSet.getInt("project_id"),
                        resultSet.getString("title"),
                        resultSet.getString("description"),
                        resultSet.getString("status"),
                        resultSet.getString("priority"),
                        resultSet.getString("due_date")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}