package servlet.playground;

import servlet.playground.services.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistrationServlet" , value = "/register")
public class RegistrationServlet {

    public void init(){
        userService = new UserService();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response){
        String username = request.getParameter("username");
        String pass = request.getParameter("password");

        if(doesUserExist(username)){

        }

    }

}
