package myy803.diplomas_mgt_app_skeleton.model;

import java.util.Collection;
import java.util.Collections;

import jakarta.persistence.*;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


@Entity
@Table(name="users")
public class User implements UserDetails{

	@Id
	@Column(name="username", unique=true)
	@NotBlank(message = "User's name cannot be empty.")
    @Size(min = 5, max = 250)
	private String username;

	@NotBlank(message = "User's password cannot be empty.")
    @Size(min = 5, max = 250)
	@Column(name="password")
	private String password;
	
    @Enumerated(EnumType.STRING)
    @Column(name="role")
    private Role role;
    
	public User() {
		super();
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		 SimpleGrantedAuthority authority = new SimpleGrantedAuthority(role.name());
	     return Collections.singletonList(authority);
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public String getPassword() {
		return password;
	}

	public void setPassword(String encodedPassword) {
		password = encodedPassword;	
	}

	@Override
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public Role getRole() {
		return role;
	} 

	public void setRole(Role role) {
		this.role = role;
	}
	
}
