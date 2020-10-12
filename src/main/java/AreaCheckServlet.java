import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;

@WebServlet("/AreaCheck")
public class AreaCheckServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double x = Double.parseDouble(request.getParameter("x"));
		double y = Double.parseDouble(request.getParameter("y"));
		double r = Double.parseDouble(request.getParameter("r"));
		boolean result;
		result = CheckSquare(x, y, r) || CheckQuarterCircle(x, y, r) || CheckTriangle(x, y, r);
		Object object = new Object(x, y, r, result);
		ServletContext context = getServletContext();
		Deque<Object> deque = (ArrayDeque<Object>) context.getAttribute("deque");
		deque = deque == null ? new ArrayDeque<Object>() : deque;
		deque.addFirst(object);
		context.setAttribute("deque", deque);
		request.setAttribute("deque", deque);
		getServletContext().getRequestDispatcher("/jsps/answer.jsp").forward(request, response);

	}

	private static boolean CheckSquare(double x, double y, double r) {
		return x >= -r && x <= 0 && y <= 0 && y >= -r;
	}

	private static boolean CheckQuarterCircle(double x, double y, double r) {
		return (x >= 0) && (y <= 0) && ((x * x + y * y) <= r * r);
	}

	private static boolean CheckTriangle(double x, double y, double r) {
		return x >= 0 && x <= r && y >= 0 && y <= r / 2 && (y <= -x / 2 + r / 2);
	}
}
