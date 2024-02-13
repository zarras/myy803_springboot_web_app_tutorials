package sb_tutorial_5;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class FormElementsApplication {

	public static void main(String[] args) {
		SpringApplication.run(FormElementsApplication.class, args);
	}

}
