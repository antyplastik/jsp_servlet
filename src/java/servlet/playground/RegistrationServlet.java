package servlet.playground;

import servlet.playground.models.User;
import servlet.playground.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegistrationServlet" , value = "/register.jsp")
public class RegistrationServlet {

    private UserService userService;

    public void init(){
        userService = new UserService();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");

        if(userService.doesUserExist(username)){
            RequestDispatcher rd = request.getRequestDispatcher("upsik.jsp");
            rd.forward(request,response);
        } else {
            if(userService.addUser(new User(2,username, pass, email)))
                response.setStatus(HttpServletResponse.SC_CREATED);
        }

    }

}
