package kr.co.tworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient  
public class TwdMainApplication {

	public static void main(String[] args) {
		SpringApplication.run(TwdMainApplication.class, args);
	}
	

}
