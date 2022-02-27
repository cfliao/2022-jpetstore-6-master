package jpetstore.backup;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class AccessingDataJpaApplication {
    private static final Logger log = LoggerFactory.getLogger(AccessingDataJpaApplication.class);

    public static void main(String[] args) {
        //SpringApplication.run(AccessingDataJpaApplication.class, args);
        new SpringApplicationBuilder(AccessingDataJpaApplication.class)
                .web(WebApplicationType.NONE)
                .run(args);
    }

//    @Bean
//    public CommandLineRunner demo(CategoryRepository repository) {
//        return (args) -> {
//            // fetch all customers
//            log.info("Customers found with findAll():");
//            log.info("-------------------------------");
//            for (Category category : repository.findAll()) {
//                log.info(category.toString());
//            }
//            log.info("");
//
//            // fetch an individual customer by ID
//            Category category = repository.findByCategoryId("FISH");
//            log.info("Category found with findById:");
//            log.info("--------------------------------");
//            log.info(category.toString());
//            log.info("");
//        };
//    }

}
