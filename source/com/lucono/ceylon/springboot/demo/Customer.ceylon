import javax.persistence { 
    entity, 
    id = id__FIELD, 
    generated = generatedValue__FIELD, 
    GenerationType { autoGen = AUTO } 
}


entity
shared class Customer(
    shared variable String firstName = "",
    shared variable String lastName = "",
    id generated { strategy = autoGen; }
    shared Integer id = 0) {
    
    string => "Customer ``id``: ``firstName`` ``lastName``";
}