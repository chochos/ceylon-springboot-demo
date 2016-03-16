import java.lang { JIterable = Iterable, Long }
import java.util { Collections }
import org.springframework.web.bind.annotation { restController, requestMapping, pathVariable }
import org.springframework.beans.factory.annotation { autowiredField = autowired__FIELD }


restController
requestMapping({ "/customers" })
shared class CustomerController(repository) {
    
    autowiredField
    CustomerRepository repository;
    
    
    requestMapping({ "/" })
    shared JIterable<Customer> findAll() => repository.findAll();
    
    
    requestMapping({ "{lastNameOrId}" })
    shared JIterable<Customer> findByLastNameOrId(pathVariable String lastNameOrId) =>
        if (exists id = parseInteger(lastNameOrId))
        then if (exists cust = repository.findOne(Long.valueOf(id))) 
            then Collections.singleton(cust) 
            else Collections.emptyList<Customer>()
        else repository.findByLastName(lastNameOrId);
}
