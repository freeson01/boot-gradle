package app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class BootGradleApplication {

	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BootGradleApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(BootGradleApplication.class, args);
	}

}
