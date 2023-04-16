package kz.bitlab.sprint.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/schema_items",
                    "root", "root");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Item> getItems(){

        ArrayList<Item> items = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM sprint_table");

            ResultSet resultSet = statement.executeQuery();//Подтягиваем данные на переменную
            while (resultSet.next()){
                Item item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));

                items.add(item);
            }
            statement.close();//закрываем запрос
        }catch (Exception e){
            e.printStackTrace();
        }

        return items;
    }

    public static ArrayList<User> getUsers(){

        ArrayList<User> users = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM users");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setEmail(resultSet.getString("password"));
                user.setEmail(resultSet.getString("full_name"));

                users.add(user);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }

    public static void checkUser(){

    }

}
