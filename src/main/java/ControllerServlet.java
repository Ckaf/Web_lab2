import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Double.parseDouble(request.getParameter("x"));
            Double.parseDouble(request.getParameter("y"));
            Double.parseDouble(request.getParameter("r"));
            getServletContext().getRequestDispatcher("/AreaCheck").forward(request, response);
        }
        catch (NumberFormatException | NullPointerException e) {
            getServletContext().getRequestDispatcher("/jsps/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	getServletContext().setAttribute("deque", null);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
