import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns="/processa-dados-do-form")
public class ProcessDataFormServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String msg = request.getParameter("msg");

        //Neste ponto os dados poderiam ser validados e salvos em banco de dados se fosse o caso

        RequestDispatcher rd = request.getRequestDispatcher("/show-email.jsp");

        request.setAttribute("nome", nome);
        request.setAttribute("email", email);
        request.setAttribute("msg", msg);

        rd.forward(request, response);

    }
}
