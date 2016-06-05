import java.lang { Long }
import org.springframework.web.bind.annotation { restController, requestMapping, pathVariable }
import org.springframework.beans.factory.annotation { autowired }

requestMapping({ "/customers" })
autowired restController class CustomerController(CustomerRepository repository) {
    
    requestMapping({ "/" })
    function findAll() => repository.findAll();
    
    requestMapping({ "/{id}" })
    function findById(pathVariable Long id) => repository.findOne(id);
    
    requestMapping({ "/search/{name}" })
    function findByName(pathVariable String name) => repository.findByLastName(name);
}