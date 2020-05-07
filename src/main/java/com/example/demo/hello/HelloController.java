package com.example.demo.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
public class HelloController {

    @Autowired
    private MessageRepository messageRepository;

    @GetMapping("/message/{id}")
    public Mono<Message> getById(@PathVariable Long id) {
        return messageRepository.findById(id);
    }

    @GetMapping("/message")
    public Flux<Message> getAll() {
        return messageRepository.findAll();
    }

    @PostMapping("/message")
    public Mono<Message> save(@RequestBody Message message) {
        return messageRepository.save(message);
    }

}
