package servlet.playground;

import servlet.playground.models.User;
import servlet.playground.services.UserService;
import servlet.playground.validators.EmailValidator;
import servlet.playground.validators.PasswordValidator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegistrationServlet", value = "register")
public class RegistrationServlet extends HttpServlet {

    private UserService userService;

    public void init() {
        userService = new UserService();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");

        if (userService.doesUserExist(username)) {
            RequestDispatcher rd = request.getRequestDispatcher("upsik.jsp");
            rd.forward(request, response);
        } else {
            if (checkPassAndEmail(pass, email)) {
                if (userService.addUser(new User(2, username, pass, email)))
                    response.setStatus(HttpServletResponse.SC_CREATED);
            } else
                ;
        }

    }

    private boolean checkPassAndEmail(final String pass, final String email) {
        EmailValidator emailValidator = new EmailValidator();
        PasswordValidator passwordValidator = new PasswordValidator();
        return emailValidator.validate(email) && passwordValidator.validate(pass);
    }

    public void destroy() {
    }

}
