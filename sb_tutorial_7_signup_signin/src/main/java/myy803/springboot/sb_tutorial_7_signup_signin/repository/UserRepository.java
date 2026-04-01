package myy803.springboot.sb_tutorial_7_signup_signin.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import myy803.springboot.sb_tutorial_7_signup_signin.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	Optional<User> findByUsername(String username);
}
