package servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kyle Helmer
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String action = request.getParameter("action");

        if (action != null && action.equals("logout")) {
            session.invalidate();
            session = request.getSession();
            request.setAttribute("message", "You have logged out!");
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                    .forward(request, response);
        }

        if (username != null) {
            session.setAttribute("username", username);
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp")
                    .forward(request, response);
        } else {
            request.setAttribute("message", "Welcome, please enter a username");
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                    .forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String item = request.getParameter("addThis");
        ArrayList<String> listItems;

        if (session.getAttribute("listItems") == null) {
            listItems = new ArrayList();
        } else {
            listItems = (ArrayList) session.getAttribute("listItems");
        }

        switch (action) {
            case "register":
                session.setAttribute("username", username);
                response.sendRedirect("ShoppingList");
                break;

            case "add":
                listItems.add(item);
                session.setAttribute("listItems", listItems);
                response.sendRedirect("ShoppingList");
                break;

            case "delete":
                item = request.getParameter("item");
                listItems.remove(item);
                session.setAttribute("listItems", listItems);
                response.sendRedirect("ShoppingList");
                break;

        }

    }

}
