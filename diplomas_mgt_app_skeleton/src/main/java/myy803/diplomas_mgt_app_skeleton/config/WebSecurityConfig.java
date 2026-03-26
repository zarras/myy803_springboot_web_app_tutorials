package myy803.diplomas_mgt_app_skeleton.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.PathPatternRequestMatcher;

import myy803.diplomas_mgt_app_skeleton.service.UserServiceImpl;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

    private static final Logger log = LoggerFactory.getLogger(WebSecurityConfig.class);
    @Autowired
    private CustomSecuritySuccessHandler customSecuritySuccessHandler;
    
    @Bean
    public UserDetailsService userDetailsService() {
        return new UserServiceImpl();
    }
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider(userDetailsService());

        authProvider.setPasswordEncoder(passwordEncoder());
        
        return authProvider;
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

                http
                        .authorizeHttpRequests(
                        auth -> auth
                                .requestMatchers("/", "/login", "/register", "/save").permitAll()
                                .requestMatchers("/student/**").hasAnyAuthority("STUDENT")
                                .requestMatchers("/professor/**").hasAnyAuthority("PROFESSOR") // ??? ZAS is this needed ??? - changed from account to user
                                .anyRequest().authenticated())
                        .csrf(csrf -> csrf.disable())
                        .formLogin(form -> form
                                .loginPage("/login")
                                .failureUrl("/login?error=true")
                                .successHandler(customSecuritySuccessHandler)
                                .usernameParameter("username")
                                .passwordParameter("password"))
                        .logout(logout -> logout
                                .logoutRequestMatcher(PathPatternRequestMatcher.withDefaults().matcher("/logout"))
                                .logoutSuccessUrl("/"))
                        .exceptionHandling(ex -> ex
                                .accessDeniedPage("/access-denied"));

                http.authenticationProvider(authenticationProvider());
                http.headers(headers -> headers
                        .frameOptions(frame -> frame.sameOrigin()));

                return http.build();
    }

}