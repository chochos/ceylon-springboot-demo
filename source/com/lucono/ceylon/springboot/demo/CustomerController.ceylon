import java.lang { JIterable = Iterable, Long }
import java.util { Collections }
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
    shared JIterable<Customer> findByLastName(pathVariable String lastName)
        => if (exists id=parseInteger(lastName)) then
            if (exists cust=repository.findOne(Long.valueOf(id)))
            then Collections.singleton(cust)
            else Collections.emptyList<Customer>()
        else repository.findByLastName(lastName);
}
