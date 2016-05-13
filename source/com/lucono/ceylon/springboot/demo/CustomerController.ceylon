import java.lang { Long }
import org.springframework.web.bind.annotation { restController, requestMapping, pathVariable, requestParam }
import org.springframework.beans.factory.annotation { autowired }


restController
autowired
shared class CustomerController(CustomerRepository repository) {
    
    requestMapping({ "/" })
    function findAll() => repository.findAll();
    
    requestMapping({ "/{id}" })
    function findById(pathVariable Long id) => repository.findOne(id);
    
    requestMapping({ "/search" })
    function findByLastName(requestParam("lastName") String name) => repository.findByLastName(name);
}