package com.example.animalstoredemo.controllers;

import com.example.animalstoredemo.entity.Animal;
import com.example.animalstoredemo.entity.User;
import com.example.animalstoredemo.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Controller
public class AnimalController {

    private AnimalService animalService;

    @Autowired
    public AnimalController(AnimalService animalService) {
        this.animalService = animalService;
    }

    @GetMapping()
    public String getHome(Model model,
                          @AuthenticationPrincipal User user) {



        final List<Animal> animals = animalService.getAnimal();
        model.addAttribute("animals", animals);
        if (Objects.nonNull(user)) {
            model.addAttribute("user", user);
            model.addAttribute("userId", user.getId());
        }
        return "index";
    }

    @GetMapping("/animal-page")
    public String getAllAnimals(Model model,
                          @RequestParam(value = "page", defaultValue = "0") int page) {
        int pageSize = 5;
        Page<Animal> animalPage = animalService.getAnimal(page, pageSize);
        model.addAttribute("animalPage", animalPage.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", animalPage.getTotalPages());

        return "parts";
    }

    @GetMapping("/animals")
    public String getBooks(Model model) {
        final List<Animal> animals = animalService.getAnimal();
        model.addAttribute("animal", animals);
        return "animals";
    }

    @GetMapping("/animals/{id}")
    public String getBooks(Model model, @PathVariable Long id) {
        final Optional<Animal> animalById = animalService.getAnimalById(id);
        final Animal animal = animalById.orElse(null);
        model.addAttribute("animal", animal);
        model.addAttribute("id", id);
        return "animal";
    }

    @GetMapping("/animal")
    public String formForTree(Model model) {
        return "animalserv";
    }

    @PostMapping("/add")
    public String addAnimal(@Valid Animal animal, @AuthenticationPrincipal User user) {
        animal.setSale(true);
        animal.setUser(user);
        animalService.saveAnimal(animal);
        return "redirect:/";
    }

    @PostMapping("/edit/{id}")
    public String postEditAnimal(@PathVariable Long id,
                               Model model,
                               Animal animalBean,
                               @AuthenticationPrincipal User user) {
        final Optional<Animal> treeById = animalService.getAnimalById(id);

        if (treeById.isEmpty()) {
            throw new IllegalStateException();
        }

        if (Objects.isNull(treeById.get().getUser()) || !treeById.get().getUser().getId().equals(user.getId())) {
            throw new IllegalStateException();
        }

        final Animal animal1 = treeById.get();
        animal1.setAnimalFamily(animalBean.getAnimalFamily());
        animal1.setAnimalFamily(animalBean.getAnimalFamily());

        animalService.saveAnimal(animal1);

        return "redirect:/";
    }

    @GetMapping("/animals/delete/{id}")
    public String deleteAnimal(Model model, @PathVariable Long id) {
        final Optional<Animal> animalById = animalService.getAnimalById(id);
        final Animal animal = animalById.orElse(null);
        animalService.deleteAnimal(animal);
        return "redirect:/";
    }

}
