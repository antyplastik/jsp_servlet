package servlet.playground.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class User {

    private int UserID;
    private String Username;
    private String Password;
    private String Email;

}
