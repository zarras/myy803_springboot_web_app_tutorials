package myy803.springboot.sb_tutorial_7_signup_signin.model;

public enum Role {
	USER("User"),
    ADMIN("Admin");

    private final String value;

    private Role(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
