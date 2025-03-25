package myy803.diplomas_mgt_app_skeleton.model;

public enum Role {
	STUDENT("Student"),
    PROFESSOR("Professor");

    private final String value;

    private Role(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
