package kz.bitlab.sprint.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Objects;


@WebServlet (value = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fail = "";

        try {
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/schema_items",
                    "root", "root");
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users WHERE email = ? AND password = ?");
            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                String emailAccount = resultSet.getString("email");
                request.setAttribute("admin", emailAccount);
                String helloName = resultSet.getString("full_name");
                request.setAttribute("fullName", helloName);
                request.getRequestDispatcher("/welcome.jsp").forward(request, response);
            }else {
                fail = "failed";
                request.setAttribute("fail", fail);
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            }

            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
