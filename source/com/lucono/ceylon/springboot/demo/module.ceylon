native("jvm") module com.lucono.ceylon.springboot.demo "1.0.0" {
    
    /* Language */
    shared import java.base "8";
    import java.jdbc "8";
    import ceylon.interop.java "1.3.0";
    
    /* Spring */
    import maven:"org.springframework.boot:spring-boot-starter-web" "1.4.1.RELEASE";
    import maven:"org.springframework.boot:spring-boot-starter-data-jpa" "1.4.1.RELEASE";
    
    /* Runtime */
    import maven:"com.h2database:h2" "1.4.191";
    import maven:"org.springframework.boot:spring-boot-starter-jdbc" "1.4.1.RELEASE";
    import maven:"com.infradna.tool:bridge-method-annotation" "1.14";
}
