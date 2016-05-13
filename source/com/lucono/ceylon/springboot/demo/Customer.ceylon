import javax.persistence { entity, id, generatedValue, GenerationType { autoGen = AUTO } }


entity
shared class Customer(
    
    shared variable String firstName = "",
    shared variable String lastName = "",
    id generatedValue { strategy = GenerationType.autoGen; }
    shared Integer id = 0) {
    
    string => "Customer ``id``: ``firstName`` ``lastName``";
}