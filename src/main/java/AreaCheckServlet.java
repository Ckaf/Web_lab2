import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AreaCheck")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        double x = Double.parseDouble(request.getParameter("x"));
        double y = Double.parseDouble(request.getParameter("y"));
        double r = Double.parseDouble(request.getParameter("r"));
        boolean result;
        if (CheckSquare(x,y,r)||CheckQuarterCircle(x,y,r)||CheckTriangle(x,y,r)){
        result=true;
        }
        else result=false;
        Object object=new Object(x,y,r,result);

        HttpSession session = request.getSession();
        session.setAttribute("obj",object);

    }

    private static boolean CheckSquare(double x, double y, double r) {
        if (x >= -r && x <= 0 && y <= 0 && y >= r) return true;
        else return false;
    }

    private static boolean CheckQuarterCircle(double x, double y, double r) {
        if ((x >= 0) && (y <= 0) && ((x * x + y * y) <= r * r)) return true;
        else return false;
    }

    private static boolean CheckTriangle(double x, double y, double r) {
        double inTriangle1 = (0 - x) * (0 - r / 2);
        double inTriangle2 = -(r / 2 - 0) * (0 - y);
        double inTriangle3 = (r / 2 - x) * (r / 2 - 0) - (0 - r / 2) * (0 - y);
        if (inTriangle1 <= 0 && inTriangle2 <= 0 && inTriangle3 <= 0) return true;
        else {
            if (inTriangle1 > 0 && inTriangle2 >= 0 && inTriangle3 >= 0)return true;
            else return false;
        }
    }
}
