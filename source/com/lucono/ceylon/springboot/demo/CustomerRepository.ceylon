import java.lang { Long, JIterable = Iterable }
import org.springframework.data.repository { CrudRepository }

shared interface CustomerRepository satisfies CrudRepository<Customer, Long> {
    
    shared formal JIterable<Customer> findByLastName(String lastName);
}