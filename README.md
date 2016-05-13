# ceylon-springboot-demo

### Compile and run this demo

Clone the project, then execute following command in the root of the project.

```sh
$ ./gradlew
```
    
This will start the application on localhost, on port 8080. You can verify it is running by using the following command:

```sh
$ curl -i -X GET -H Accept:application/json http://localhost:8080/customers/
```

### Make some requests to the endpoints

In your local browser, you can make requests to the various endpoints:

* View all customers:

  `http://localhost:8080/customers/`

* Get customer whose id is 1:

  `http://localhost:8080/customers/1`
    
* Find customer whose last name is Palmer:

  `http://localhost:8080/customers/search/Palmer`
