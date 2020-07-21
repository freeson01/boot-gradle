package app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class GradleWebNodbApplication {

	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(GradleWebNodbApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(GradleWebNodbApplication.class, args);
	}

}
