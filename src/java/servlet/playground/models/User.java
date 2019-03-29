package servlet.playground.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {

    private int UserID;
    private String Username;
    private String Password;
    private String Email;

    public User(int userID, String username, String password, String email) {
        UserID = userID;
        Username = username;
        Password = password;
        Email = email;
    }
}
