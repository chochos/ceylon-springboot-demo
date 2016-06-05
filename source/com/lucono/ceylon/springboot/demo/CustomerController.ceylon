import java.lang { Long }
import org.springframework.web.bind.annotation { restController, requestMapping, pathVariable }
import org.springframework.beans.factory.annotation { autowired }

requestMapping({ "/customers" })
autowired restController class CustomerController(CustomerRepository repo) {
    
    requestMapping({ "/" })
    function findAll() => repo.findAll();
    
    requestMapping({ "/{id}" })
    function findById(pathVariable Long id) => repo.findOne(id);
    
    requestMapping({ "/search/{name}" })
    function findByName(pathVariable String name) => repo.findByLastName(name);
}