import java.lang { JIterable = Iterable }
import org.springframework.web.bind.annotation { restController, requestMapping, pathVariable }
import org.springframework.beans.factory.annotation { autowiredField = autowired__FIELD }


restController
requestMapping({ "/customers" })
shared class CustomerController() {

    autowiredField
    late CustomerRepository repository;
    

    requestMapping({ "/" })
    shared JIterable<Customer> findAll() => repository.findAll();
    

    requestMapping({ "{lastName}" })
    shared JIterable<Customer> findByLastName(pathVariable String lastName) => repository.findByLastName(lastName);
    
}