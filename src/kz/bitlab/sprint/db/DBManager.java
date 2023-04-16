package kz.bitlab.sprint.db;

import jakarta.servlet.http.HttpServlet;

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

}
