package com.example.animalstoredemo.config;

import com.example.animalstoredemo.entity.User;
import com.example.animalstoredemo.entity.Animal;
import com.example.animalstoredemo.service.AnimalService;
import com.example.animalstoredemo.service.UserService;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Random;

@Component
public class DbInit {

    private final AnimalService animalService;

    private final UserService userService;

    private Random random = new Random();

    public DbInit(final AnimalService animalService, final UserService userService) {
        this.animalService = animalService;
        this.userService = userService;
    }

    @PostConstruct
    private void postConstruct() {
        for (int i = 0; i < 100; i++) {
            final Animal animal = new Animal();
            animal.setAnimalFamily(random.nextLong());
            animal.setName("Tree " + random.nextInt());
            animal.setSale(random.nextBoolean());
            animalService.saveAnimal(animal);
        }

        final User user = new User();
        user.setEmail("user@gmail.com");
        user.setUsername("cat");
        user.setPassword("cat");

        userService.addUser(user, false);

        final User admin = new User();
        admin.setEmail("admin@gmail.com");
        admin.setUsername("admin");
        admin.setPassword("admin");

        userService.addUser(admin, true);
    }
}
