import java.lang { Long }
import ceylon.interop.java { javaClass }
import org.springframework.boot { SpringApplication, ApplicationRunner, ApplicationArguments }
import org.springframework.boot.autoconfigure { springBootApplication }
import org.springframework.context.annotation { bean }
import org.slf4j { LoggerFactory }


springBootApplication
shared class Application() {
    
    value log = LoggerFactory.getLogger(javaClass<Application>());
    
    bean 
    shared default ApplicationRunner init(
            CustomerRepository repo) => object satisfies ApplicationRunner {
        
        shared actual void run(ApplicationArguments? applicationArguments) {
            
            /* Save some customers then find them in different ways */
            
            value customers = {
                Customer("Jack", "Bauer"),
                Customer("Chloe", "O'Brian"),
                Customer("Kim", "Bauer"),
                Customer("David", "Palmer"),
                Customer("Michelle", "Dessler")
            };
            
            customers.each((customer) => repo.save(customer));
            
            log.info("
                      Find all customers with findAll():
                      ----------------------------------
                      ``[ for (customer in repo.findAll()) customer.string ].fold("")(
                            (namesList, customerName) => namesList + "\n" + customerName)``
                      ----------------------------------
                      ");
            
            value bauerCustomers = repo.findByLastName("Bauer");
            
            log.info("
                      Find customers with findByLastName('Bauer'):
                      --------------------------------------------
                      ``[ for (customer in bauerCustomers) customer.string ].fold("")(
                            (namesList, customerName) => namesList + "\n" + customerName)``
                      ");
            
            Customer? customer1 = repo.findOne(Long.valueOf(1));
            
            log.info("
                      Find customer by Id with findOne(1):
                      ------------------------------------
                      ``customer1?.string else "<Customer not found>"``
                      ");
        }
    };
}

shared void run() => SpringApplication.run(javaClass<Application>(), *process.arguments);