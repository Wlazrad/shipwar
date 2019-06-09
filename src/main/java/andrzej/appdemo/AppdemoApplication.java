package andrzej.appdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"andrzej.appdemo"})
public class AppdemoApplication {

    public static void main(String[] args) {

        SpringApplication.run(AppdemoApplication.class, args);


    }
}
