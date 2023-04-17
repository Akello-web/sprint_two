package kz.bitlab.sprint.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.sprint.db.DBManager;
import kz.bitlab.sprint.db.Item;

import java.io.IOException;

@WebServlet (value = "/add-item")
public class AddItemServerlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("product_name");
        String description = request.getParameter("product_desc");
        double price = Double.parseDouble(request.getParameter("product_price"));

        Item item = new Item();
        item.setName(name);
        item.setDescription(description);
        item.setPrice(price);

        DBManager.addItem(item);

        response.sendRedirect("/");
    }
}
