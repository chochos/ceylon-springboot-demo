ceylon-springboot-demo
----------------------

To compile and run this demo execute following command in the root of the project.

    $ ./gradlew runCeylon
    
This will start server on localhost:8080, you can test that everything is running with 
    
    $ curl -i -X GET -H Accept:application/json http://localhost:8080/customers/
