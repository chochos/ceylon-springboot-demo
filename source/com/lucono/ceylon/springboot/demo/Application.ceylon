import java.lang { Long }
import org.slf4j { LoggerFactory }
import org.springframework.boot { SpringApplication, ApplicationRunner, ApplicationArguments }
import org.springframework.context.annotation { bean }
import org.springframework.boot.autoconfigure { springBootApplication }
import ceylon.interop.java { javaClass }


springBootApplication
shared class Application() {
    
    value log = LoggerFactory.getLogger(javaClass<Application>());
    
    
    bean 
    shared default ApplicationRunner init(CustomerRepository repository) => object satisfies ApplicationRunner {
        
        shared actual void run(ApplicationArguments? applicationArguments) {
            
            /* --- Save a couple of customers --- */
            
            repository.save(Customer("Jack", "Bauer"));
            repository.save(Customer("Chloe", "O'Brian"));
            repository.save(Customer("Kim", "Bauer"));
            repository.save(Customer("David", "Palmer"));
            repository.save(Customer("Michelle", "Dessler"));
            
            
            /* --- Fetch all customers --- */
            
            log.info("Customers found with findAll():");
            log.info("-------------------------------");
            
            for (customer in repository.findAll()) {
                log.info(customer.string);
            }
            log.info("");
            
            
            /* --- Fetch an individual customer by ID --- */
            
            Customer? customer = repository.findOne(Long(1));
            
            log.info("Customer found with findOne(1L):");
            log.info("--------------------------------");
            log.info(customer?.string else "<Customer not found>");
            log.info("");
            
            
            /* --- Fetch customers by last name --- */
            
            log.info("Customer found with findByLastName('Bauer'):");
            log.info("--------------------------------------------");
            
            for (bauer in repository.findByLastName("Bauer")) {
                log.info(bauer.string);
            }
            log.info("");
        }
    };
}


shared void run() => SpringApplication.run(javaClass<Application>());
