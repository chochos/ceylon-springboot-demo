import javax.persistence { entity, id, generated = generatedValue }

shared entity class Customer(
    
    shared variable String firstName = "",
    shared variable String lastName = "",
    shared generated id Integer id = 0) {
    
    string => "Customer ``id``: ``firstName`` ``lastName``";
}