package myy803.springboot.sb_tutorial_7_signup_signin.service;

import org.springframework.stereotype.Service;

import myy803.springboot.sb_tutorial_7_signup_signin.model.User;

@Service
public interface UserService {
	public void saveUser(User user);
    public boolean isUserPresent(User user);
}
