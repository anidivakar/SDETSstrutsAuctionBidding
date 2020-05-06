package com.ust.login.action;

import com.ust.login.action.com.ust.DTO.User;

import java.util.ArrayList;
import java.util.List;

public class UserListing {

    List<User> userList;


    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public String execute() throws Exception {
        userList = new ArrayList<User>();
        User user = new User();
        user.setEmail("Email1");
        user.setUsername("Sasi");
        userList.add(user);

        User user1 = new User();
        user1.setEmail("Sasi@gmail.com");
        user1.setUsername("Sasi Kesh");
        userList.add(user1);
        return "success";
    }
}
