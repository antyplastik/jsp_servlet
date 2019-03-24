package servlet.playground.services;

import servlet.playground.models.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {

    private List<User> userList = new ArrayList<User>();

    public UserService() {
        userList.add(new User(1,"admin","password1234","admin@gmail.com"));
    }

    public boolean doesUserExist(String username){
        boolean result = false;


        return result;
    }

}
