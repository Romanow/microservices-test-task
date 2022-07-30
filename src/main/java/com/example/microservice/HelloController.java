package com.example.microservice;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @Value("#{environment.GREETING_NAME}")
    private String name;

    @GetMapping("/")
    public String index() {
        return "Hello, " + name;
    }

}
