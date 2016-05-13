native("jvm")
module com.lucono.ceylon.springboot.demo "1.0.0" {
    
    /* Language */
    shared import java.base "8";
    import java.jdbc "8";
    import ceylon.interop.java "1.2.2";
    
    /* Spring */
    import "org.springframework.boot:spring-boot-starter-web" "1.3.2.RELEASE";
    import "org.springframework.boot:spring-boot-starter-data-jpa" "1.3.2.RELEASE";
    
    /* Runtime */
    import "com.h2database:h2" "1.4.191";
    import "org.springframework.boot:spring-boot-starter-jdbc" "1.3.2.RELEASE";
    import "com.infradna.tool:bridge-method-annotation" "1.14";
}
