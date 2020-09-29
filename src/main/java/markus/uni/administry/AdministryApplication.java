package markus.uni.administry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication(scanBasePackages = {"markus.uni.controller", "markus.uni.services"})
@EnableJpaRepositories(basePackages = "markus.uni.repositories")
@EntityScan(basePackages = "markus.uni.entities")
@EnableTransactionManagement
@EnableJpaAuditing
public class AdministryApplication {

    public static void main(String[] args) {
        SpringApplication.run(AdministryApplication.class, args);
    }

}
